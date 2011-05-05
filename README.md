# Amplafi Opensource Tools Project#
Welcome to the Amplafi opensource tools project. The goal of this
project is to get a user up and running with all of the needed tools and
source to work on the opensource projects.  If you made it to these instructions, you successfully ignored all the clutter at the top of this webpage.  

Note: Comments and corrections to these instructions are welcome.

## Prerequisites:##

  **These prerequisites can be installed in any directory you want**

* **[A Github Account:](https://github.com/)**
   * Setup your machine to use github with Git's  [instructions](http://help.github.com/set-up-git-redirect).

* **[Git 1.7+:](http://help.github.com/set-up-git-redirect)**  The program git is needed for the initial download and install.
   * Check this is installed with this command, still in Git Bash on Windows.
<pre> git --version</pre>

   * The ouput should say something like: git version 1.7.
   * Use the [instructions](http://help.github.com/set-up-git-redirect) if you need to set it up. 
   * On Windows you need to set up an ssh-agent on your machine so there is no user verification required during the cloning that follows:
 
        a) set up an ssh-agent using these [instructions](http://help.github.com/working-with-key-passphrases/)
  
        b) Now when you run the msysgit bash you should be prompted for your passphrase. If you are not prompted for your passphrase then restart windows and start the msysgit bash tool again. 



   * If you get an error like: *Permission denied (publickey)*, please review your Git and ssh setup for correctness.

* **[Java JDK 1.6+:](http://www.oracle.com/technetwork/java/javase/downloads/index.html)**  This program is needed to run builds. Note this is the *JDK*, not the *JRE*, and you want to avoid the "glassfish" version".  Here is a [link for Windows Java JDK] (http://www.oracle.com/technetwork/java/javase/downloads/jdk-6u25-download-346242.html)

   * Check that this is installed with this command, still in Git Bash on Windows.
<pre> java -version</pre>

   * The output should say something like: Java SE runtime build 1.6.


* **[Eclipse latest download:](http://www.eclipse.org/downloads/)** This is the tool you will be developing in (You can start downloading this tool and continue with the instructions if you are on a fast connection). Note this is the *EE* version of Eclipse.
   * The "Eclipse IDE for Java EE Developers" is the tool you need.

## Before you start##
* When going through the instructions, if you run into trouble, first look at the known issues section at the bottom of this document to see if your trouble has a known fix.
* If using windows, the commands will need to be issued from the msysgit Git Bash tool, which is Linux style commands, or use cygwin. If using Windows command line, slashes in full path names will need to be reversed to backwards slash: "\\"


## Creating the proper folder structure##

1. Find the place where you want the amplafi files and tools to be placed.
2. Create the directory "amplafi-code". This is where the clone of amplafi-tools repository will reside.


## Cloning the amplafi-tools repository using git##

1. Change your working directory to the amplafi-code directory you just created: 
<pre> cd /path/to/amplafi-code </pre>
2. Run this command, which will create the amplafi-tools subdirectory in amplafi-code directory:
<pre> git clone https://github.com/amplafi/amplafi-tools.git </pre>

## Starting the ant script##

1. Change your working directory to the amplafi-tools directory that was just created by cloning the amplafi-tools repository.
2. Run this command.
<pre> apache-ant-1.8.2/bin/ant opensource-one-time-setup </pre>

3. The console window might prompt for things (but not in Windows) so pay attention and answer the questions/prompts.

4. If the build fails then 

    a) read the error and see if it is something easy like github not being setup properly, correct github setupcommand

    b) check the known issues below

    c) make sure you were in the correct directory before running the command

5. Rerun if needed until success: 
<pre> apache-ant-1.8.2/bin/ant opensource-one-time-setup </pre>

6. Success will include these statements in the terminal (or Git Bash on Windows): <pre>complete-one-time-config-opensource:
opensource-one-time-setup:
BUILD SUCCESSFUL
Total time: 41 minutes 7 seconds</pre>


## Change the origin and upstream for the project you are working on##

Currently you have downloaded all of the opensource projects, but do not have write access. It is nessary at this point to modify your origin and upstream so that they point to the correct projects. The big picture is that the origin should point to your fork, and the upstream should point to the amplafi project.

1. cd into the amplafi-code directory
2. Delete the directory you will be working on 
3. Follow these [instructions](http://help.github.com/fork-a-repo/) to fork the project you will be working on and re-download the new fork.

##Setup the Eclipse workspace##
Now that you have the opensource files it is time to add them to an Eclipse workspace.

1. Open eclipse and set your working directory to the amplafi-code directory.
2. Go to the workbench.
3. Use the menu **File>Import...**
4. Open the General folder (with the + sign or arrow) and select **Existing Projects Into Workspace**.
5. Hit the next button.
6. On the option **Select root directory** hit the browse button.
7. Choose the **amplafi-code** directory(and hit okay).
8. A list of projects should appear on the screen, and all of them should be checked.
9. Now, hit **Finish**.
10. Now, eclipse will take a moment and refresh and build the projects. When it completes you should see no errors (just warnings and tasks).
   * If you see errors, then close eclipse and:
      1. Go to the command window and run this command again.
<pre> apache-ant-1.8.2/bin/ant opensource-one-time-setup</pre>

      2. Open eclipse to the amplafi-code workspace.
      3. Select all of the projects on the left hand side and **press the F5 key** (This will force refresh).
      4. Now use the menu **Projects>clean...**
      5. Choose **clean all projects**.
      6. If the errors still don't go away after the rebuild then ask for help.

TODO: add more about what success looks like, maybe how can run the "testNG" run of a "...test..." file.
TODO: add something about what to do when you want to import from a fork and Eclipse doesn't do anything when you import!

## Configure Eclipse##

The following files are located in the amplafi-code/amplafi-opensource-parent/src/main/resources/eclipse/
directory.

1. **import the eclipse-java-codetemplates.xml**
   1. Open the preferences menu.  
   ![Open the preferences menu.][openPreferences]
   2. Navigate to the Java Code Templates and select import.  
   ![Navigate to the Java Code Templates][codeTemplates]
   3. Now use the file choose to select the file and click OK.
2. **import the eclipse-java-formatting.xml**
   1. Open the preferences menu.
   2. Navigate to the Java Formatter and select import.  
   ![Navigate to the Java Formatter][codeFormatter]
   3. Now use the file choose to select the file and click OK.
3. **import the eclipse-java-cleanup.xml**
   1. Open the preferences menu.
   2. Navigate to the Java Clean Up and select import.  
   ![Navigate to the Java Clean Up][codeCleanUp]
   3. Now use the file choose to select the file and click OK.

[openPreferences]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/openPreferences.png>
[codeTemplates]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/codeTemplates.png>
[codeFormatter]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/codeFormatter.png>
[codeCleanUp]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/codeCleanUp.png>


## Install these Eclipse Plugins##
1. [Findbugs](http://findbugs.sourceforge.net/)
   1. While in Eclipse, open the marketplace. When first screen pops up choose the Eclipse marketplace.  
   ![Opening the Eclipse Marketplace][OpenMarketplace]
   2. Search for "findbugs" and click the install button.  
   ![Finding the plugin in the marketplace][findbugsMarketplace]
   3. Click next to continue installation.  
   ![Click Next][findbugsInstall]
   4. Now accept the license agreement and click finish.  
   ![Accept the license][findbugsLicense]
   5. Eclipse will now display the installing software dialog (you may click the button to run in the background).  
   ![Eclipse installing software][installingSoftware]
   6. You will be prompted if you want to continue installation, click OK.  
   ![Eclipse Security Warning][securityWarning]
   7. Finally, when the Eclipse installation is complete, you will be prompted to restart. Do so now.  
   ![Restart Eclipse for the changes take effect.][restart]
   8. Now that you have findBugs installed here is some short tips on using it.

      1. First lets run findbugs on a project. Right click on the project and click the 'Find Bugs' menu option.  
      ![Running Find Bugs on a Project][findbugsRun]
      2. Now open the Find Bugs perspective if you have not already.  
      ![Opening a perspective][openPerspective]  
      ![Opening the findbugs perspective][findbugsOpenPerspective]
      3. Now that you have this perspective there is a lot of information that can be seen about the possible bugs in the code.  
      ![General Perspective of findbugs][findbugsGeneral]
2. [Testng](http://testng.org/doc/eclipse.html)
   1. Install testng in much the same way as findbugs, only search for testng.  
   ![Installing testng from the marketplace][testngInstall]


<!-- These are the reference links to the images for this section. -->
[OpenMarketplace]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/openMarketplace.png>
[installingSoftware]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/installingSoftware.png>
[securityWarning]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/securityWarning.png>
[restart]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/restart.png>
[openPerspective]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/openPerspective.png>
[findbugsMarketplace]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/findBugsMarketplace.png>
[findbugsInstall]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/findBugsInstall.png>
[findbugsLicense]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/findBugsLicense.png>
[findbugsRun]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/findBugsRun.png>
[finbugsOpenPerspective]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/findBugsOpenPerspective.png>
[findbugsGeneral]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/findBugsGeneral.png>
[testngInstall]: <https://github.com/amplafi/amplafi-tools/raw/master/readme-images/testngInstall.png>

## Making A Pull Request##
When you are satisfied with your changes you will have to send a pull request to add them to the upstream repository. Please follow these [instructions](http://help.github.com/pull-requests/).

## Known Issues##
* JAVA_HOME has not been set - build failure
   * This environment variable should be setup when installing the JDK. Set this environment variable to point to the installation directory for the Java Development Kit.
* ant git-pull-all-opensource (git clone or pull) just hangs
   * This is known to happen on Windows, the problem is that the [ant exec task](http://ant.apache.org/manual/Tasks/exec.html) does not support user interaction. This behavior is expressed on windows as the command just sitting there.
   * To fix this git must not require user interaction:
      * Make sure that the github server is in the known_hosts file (running a ssh git@github.com should prompt you to add a known host if it is not already added).
      * Use these [instructions](http://help.github.com/working-with-key-passphrases/) to add an ssh-agent to the msysgit Git Bash.
      * Reopen the msysgit bash utility. If you are not prompted for your passphrase then restart windows. If you are prompted for your passphrase then enter your passphrase and continue with running the ant command.
      * Note: it was thought that the absence of the home-dir/.gitconfig file caused this issue, if the above doesn't fix the problem then check that this file exists.
         * home-dir/.gitconfig file has not yet been created. Check that the file is there. If it is not run the following command to create it.
         <pre> git config --global user.name "Firstname Lastname"</pre>
         This command is what initially creates the .gitconfig file. 
* maven complains about the ANDROID_HOME environment variable not being set while building the amplafi-android project.
   * If you need the amplafi-android project to build, please visit [Installing Android SDK](http://developer.android.com/sdk/installing.html) for information on how to install the SDK.
   * Once the SDK is installed add the ANDRIOD_HOME enviroment variable to point to the SDK.

Notes on progress:

* It would be nice if the workspace could be built with the formatters in
place and all the user would have to do is direct eclipse to the
workspace folder and viola projects added, formatters imported, and no
eclipse configuration for the user.

* It would also be nice if we could download some default plugins and drop
them into eclipse.