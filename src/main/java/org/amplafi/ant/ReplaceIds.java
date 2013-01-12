package org.amplafi.ant;

import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;

/**
 * Replaces all occurancies of an arbitrary string in a file with incremental int values. 
 * 
 * Used to avoid unnecessary deltas when creating liquibase files.
 * 
 * @author aectann@gmail.com (Konstantin Burov)
 */
public class ReplaceIds extends Task {

    private String inputFile;

    private String outputFile;

    private String stringToReplace;

    public String getInputFile() {
        return inputFile;
    }

    public void setInputFile(String inputFile) {
        this.inputFile = inputFile;
    }

    public String getOutputFile() {
        return outputFile;
    }

    public void setOutputFile(String outputFile) {
        this.outputFile = outputFile;
    }

    public String getStringToReplace() {
        return stringToReplace;
    }

    public void setStringToReplace(String stringToReplace) {
        this.stringToReplace = stringToReplace;
    }

    @Override
    public void execute() throws BuildException {
        try (Scanner input = new Scanner(new File(inputFile)); PrintWriter output = new PrintWriter(outputFile)) {
            replace(input, output);
        } catch (Exception e) {
            throw new BuildException(e);
        }
    }

    /**
     * TODO tests needed.
     * 
     * @param input
     * @param output
     */
    public void replace(Scanner input, PrintWriter output) {
        int id = 0;
        while (input.hasNextLine()) {
            String line = input.nextLine();
            String replaced = line.replace(stringToReplace, String.valueOf(id++));
            output.println(replaced);
        }
    }
}
