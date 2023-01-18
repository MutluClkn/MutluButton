# MutluButton

This documentation is created to explain how to create a custom CocoaPods step by step.

- [User Terminal Commands](#used-terminal-commands)
- [Install Pod Project](#install-pod-project)
- [Push To The GitHub](#push-to-the-github)
- [Create The Pod Project](#create-the-pod-project)
- [Release Pod](#release-pod)


## Used Terminal Commands

```
sudo gem install cocoapods

pod lib create {Project_Name}

git init
git add -A
git commit -m '{Commit message}'
git branch -M main
git remote add origin {GitHub_Repo_Link}
git push -u origin master

pod trunk register {Email} '{Full name}' --description='{Session}'
pod lib lint
pod trunk push
```


## Install Pod Project

Before creating a pod project, you need to install the latest version of CocoaPods. Simply, you can just type `sudo gem install cocapods` command to the terminal and enter your Mac password.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/1.png " width="700">

Next, you need to navigate the root folder on the terminal. You can simply do this by typing `cd` and drag and drop the root folder, or navigate by typing as I did in the picture.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/2.png " width="700">

Once you navigate the root folder, you can type `*pod lib create {Project_Name}` to clone the pod template into the root folder. You can type own project name to the *{Project_Name}* section. 

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/3.png " width="700">

After cloning, it will ask some basic questions to configure our pod project. You can answer with your own preferences.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/4.png " width="700">

Once you complete these steps Xcode should start automatically, and you need to see a similar screen to the picture below.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/5.png " width="400">



## Push To The GitHub

Next, you need to create a new repository on GitHub for your pod project. The repo must be public. Before starting to create the pod project, I prefer to commit and push it to the newly created GitHub repo. To do this, you need to navigate the terminal to cloned the pod project first.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/6.png " width="700">

Then, you can type these commands by order:

```
git init
git add -A
git commit -m '{Commit message}'
git branch -M main
git remote add origin {GitHub_Repo_Link}
git push -u origin master
```

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/7.png " width="700">
<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/9.png " width="900">



## Create The Pod Project

To prevent the errors, you need to change *iOS Deployment* on project settings. I made 15.0 for this project and recommend to make it 13.0 or higher. Do the same changes to all targets.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/14.png " width="600">
<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/13.png " width="650">
<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/15.png " width="650">

To make the project more clear, I prefer to delete *ReplaceMe* file and create a *Source* or *Sources* subfolder under Pods target and development project folder.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/10.png " width="300"><img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/11.png " width="300">

Since this is an explanation of basically creating a CocoaPods project, I only created a basic UIButton configuration method.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/23.png " width="900">

Now build the project and see if there is any error. If there is an error about *iOS Deployment*, you can change it to the higher value. For the yellow warnings, you can just simply click on them and press *Next*.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/16.png " width="200">
<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/17.png " width="750">

After dealing with the yellow warnings, `didFinishLaunchingWithOptions` method in the `AppDelegate.swift` file will need to be updated. You can simply click on the `Fix` button.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/19.png " width="800">

Once completed these steps, you can start to create an example project under `Example for {Project_Name}` folder. To test the button, create one and set the constraints on the `Main.storyboard`. On the *Identify Inspector* menu, change the class name to the pod name. After that you can connect the button to the `ViewController.swift` as outlet.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/26.png " width="900"><img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/25.png " width="250">

Now you can call the `configureButton` method to test button under `viewDidLoad()` and run the code. Don't forget to import library.

![image](https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/26.png)
<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/27.png " width="250">

If the button configurated succesfully, you can start to edit `podspec` file under `Podspec Metadata`. Change the `s.summary`, `s.description` and `s.ios.deployment_target` as you prefer. 

And add these as well:

```
  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'

  s.platforms = {
      "ios": "15.0"
  }
```

![image](https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/28.png)

Be sure to change source file to the file name that you created under Pods target and project folder. I typed `Source/**/*.swift` since I named my folder `Source`. Once you complete the changes, you can commit and push the project to the GitHub.



## Release Pod

To release the pod, you need to start with register. Open the terminal and type `pod trunk register {your_email} '{Full_Name}' --description='{session}'`. You can type simply your mac model to `session` part. Once you register with your informations, you will get a verification email. Click the link in the email and go to the next step.

![image](https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/29.png)

Before continue, you need to navigate terminal to your project root folder. Then you need to type `pod lib lint` to check if there is any error. If you get any error similar to the picture below, you need to follow this path *Xcode>Preferences>Locations* and change the *Command Line Tools* to `Xcode 14.2`.

![image](https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/30.png)![image](https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/31.png)

Next, you can click on `Create a new release` on the GitHub repo. On the Release screen, enter your project version that you writed in `podspec` file to the `Tag` section and enter the project name. Then you can click on the `Publish release`.

<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/32.png " width="300">
<img src="https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/33.png " width="800">

As the last step, you can open the terminal and type `pod trunk push` to publish the pod.

![image](https://github.com/MutluClkn/MutluButton/blob/main/Documentation/SS_Docs/34.png)
