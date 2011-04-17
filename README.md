# Amplafi Opensource Tools Project#
Welcome to the Amplafi opensource tools project. The goal of this
project is to get a user up and running with all of the needed tools and
source to work on the opensource projects.

Note: at the moment this document will have a unix slant.

## Prerequisites:##

* **[A Github Account:](https://github.com/)**
   * Setup your machine to use github with their [instructions](http://help.github.com/set-up-git-redirect).
   * [Fork](http://help.github.com/fork-a-repo/) the project that you will be working on to your github account.
		
		
* **[Git 1.7+:](http://help.github.com/set-up-git-redirect)** the program git is needed for the initial download and install.
   * Check this is installed by typing **git --version** in the console.
   * The ouput should say something like: git version 1.7.
   * Use the [instructions](http://help.github.com/set-up-git-redirect) if you need to set it up. If you get an error like: *Permission denied (publickey)*. Then you didn't properly follow the instructions, set up your SSH key now.
		
* **[Java JDK 1.6+:](http://www.oracle.com/technetwork/java/javase/downloads/index.html)** this program is needed to run builds.
   * Check that this is installed by typing **java -version** in the console.
   * The output should say something like: Java SE runtime build 1.6.
* **[Eclipse latest download:](http://www.eclipse.org/downloads/)** This is the tool you will be developing in.
   * The "Eclipse IDE for Java EE Developers" is the tool you need.

## Creating the proper folder structure.##

1. Find the place where you want the amplafi files and tools to be placed.
2. Create the amplafi-code directory.

## Cloning the amplafi-tools repository using git.##

1. Run this command #> **git clone https://github.com/amplafi/amplafi-tools.git**

## Starting the ant script.##

1. cd into the amplafi-tools directory.
2. run this command #> **apache-ant-1.8.2/bin/ant opensource-one-time-setup**
3. The console window will ask prompt for things so pay attention and answer the questions/promts.
4. If the build fails then read the error and see if is something easy like github not being setup properly. Then fix that and rerun the command.

##Setup the Eclipse workspace##
Now that you have the opensource files it is time to add them to an Eclipse workspace.
	
1. Open eclipse and set your working directory to the amplafi-code directory.
2. Go to the workbench.
3. use the menu **File>Import...**
4. open the General folder (with the + sign or arrow) and select **Existing Projects Into Workspace**.
5. Hit the next button.
6. On the option **Select root directory** hit the browse button.
7. Choose the **amplafi-code** directory(and hit okay).
8. A list of projects should appear on the screen, and all of them should be checked.
9. Now, hit **Finish**.
10. Now, eclipse will take a moment and refresh and build the projects. When it completes you should see no errors (just warnings and tasks).
   * If you see errors, then close eclipse and:
      1. go to the command window and run this command again #> **apache-ant-1.8.2/bin/ant opensource-one-time-setup**
      2. Open eclipse to the amplafi-code workspace.
      3. Select all of the projects on the left hand side and **press the F5 key** (This will force refresh).
      4. Now use the menu **Projects>clean...**
      5. Choose **clean all projects**.
      6. If the errors still don't go away after the rebuild then ask for help.
	
## Configure Eclipse##
	The following files are located in the src/main/resources/eclipse/
	directory.

1. import the eclipse-java-codetemplates.xml
   * Use the menu **Window>Preferences> --- Java>Code Style>Code Templates**
1. import the eclipse-java-formatting.xml
   * Use the menu **Window>Preferences> --- Java>Code Style>Formatter**
1. import the eclipse-java-cleanup.xml
   * Use the menu **Window>Preferences> --- Java>Code Style>Clean Up**
1. import the eclipse.bookmarks.xml
   * TODO: how is this added? Is this needed for the opensource code?
1. import the eclipse.importorder
   * TODO: how is this added? Is this needed for the opensource code?
	
Notes on progress:

* It would be nice if the workspace could be built with the formatters in
place and all the user would have to do is direct eclipse to the
workspace folder and viola projects added, formatters imported, and no
eclipse configuration for the user.

* It would also be nice if we could download some default plugins and drop
them into eclipse.