# Amplafi Opensource Tools Project#
Welcome to the Amplafi opensource tools project. The goal of this
project is to get a user up and running with all of the needed tools and
source to work on the opensource projects.

Note: at the moment this document will have a unix slant.

## Prerequisites:##

* **[A Github Account:](https://github.com/)**
   * Setup your machine to use github with their [instructions](http://help.github.com/set-up-git-redirect).

* **[Git 1.7+:](http://help.github.com/set-up-git-redirect)** the program git is needed for the initial download and install.
   * Check this is installed with this command.
<pre> git --version</pre>

   * The ouput should say something like: git version 1.7.
   * Use the [instructions](http://help.github.com/set-up-git-redirect) if you need to set it up. If you get an error like: *Permission denied (publickey)*. Then you didn't properly follow the instructions, set up your SSH key now.

* **[Java JDK 1.6+:](http://www.oracle.com/technetwork/java/javase/downloads/index.html)** this program is needed to run builds.
   * Check that this is installed with this command.
<pre> java -version</pre>

   * The output should say something like: Java SE runtime build 1.6.
* **[Eclipse latest download:](http://www.eclipse.org/downloads/)** This is the tool you will be developing in (You can start downloading this tool and continue with the instructions if you are on a fast connection).
   * The "Eclipse IDE for Java EE Developers" is the tool you need.

## Creating the proper folder structure.##

1. Find the place where you want the amplafi files and tools to be placed.
2. Create the amplafi-code directory.

## Cloning the amplafi-tools repository using git.##

1. Run this command.
<pre> git clone https://github.com/amplafi/amplafi-tools.git </pre>

## Starting the ant script.##

1. cd into the amplafi-tools directory.
2. run this command(for windows change the '/' characters to '\').
<pre> apache-ant-1.8.2/bin/ant opensource-one-time-setup </pre>

3. The console window will ask prompt for things so pay attention and answer the questions/promts.
4. If the build fails then read the error and see if is something easy like github not being setup properly. Then fix that and rerun the command.
<pre> apache-ant-1.8.2/bin/ant opensource-one-time-setup </pre>

## Change the origin and upstream for the project you are working on##

Currently you have downloaded all of the opensource projects, but do not have write access. It is nessary at this point to modify your origin and upstream so that they point to the correct projects. In a nut shell the origin should point to your fork, and the upstream should point to the amplafi project.

1. cd into the amplafi-code directory
2. Delete the directory you will be working on 
3. Follow these [instructions](http://help.github.com/fork-a-repo/) to fork the project you will be working on and re-download the new fork.

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
      1. go to the command window and run this command again.
<pre> apache-ant-1.8.2/bin/ant opensource-one-time-setup</pre>

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
2. import the eclipse-java-formatting.xml
   * Use the menu **Window>Preferences> --- Java>Code Style>Formatter**
3. import the eclipse-java-cleanup.xml
   * Use the menu **Window>Preferences> --- Java>Code Style>Clean Up**
4. import the eclipse.bookmarks.xml
   * TODO: how is this added? Is this needed for the opensource code?
5. import the eclipse.importorder
   * TODO: how is this added? Is this needed for the opensource code?

Reccomended Eclipse Plugins
* [Findbugs](http://findbugs.sourceforge.net/)
* [Testng](http://testng.org/doc/eclipse.html)

## Making A Pull Request##
When you are satisfied with your changes you will have to send a pull request to add them to the upstream repository. Please follow these [instructions](http://help.github.com/pull-requests/).

## Known Issues##
* JAVA_HOME has not been set - build failure
   * This environment variable should be setup when installing the JDK. Set this environment variable to point to the installation directory for the Java Development Kit.
* ant git-pull-all-opensource (git clone or pull) just hangs
   * This is known to happen on Windows, the problem is that the home-dir/.gitconfig file has not yet been created. Check that the file is there. Run the 
   <pre> git config --global user.name "Firstname Lastname"</pre>
   command. This command is what initially creates the .gitconfig file. 
* git keeps asking for the user to manually type in a password.
   * This is know to happen on Windows and can be solved by installing an [ssh-agent](http://mah.everybody.org/docs/ssh).
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