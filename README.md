# Generic Farm
## Welcome to Generic Farm! 
 We are showcasing organic produces from local farm all over the US!

 Feel free to leave a comment about our work!

 This is the BACKEND (1 ouf of 2 files) that you'll need.

# Git clone
  To start you'll need to have your WSL2 or mac vers set up

> Go To https://github.com/andrrowens/phase-3-group-project

1. Click on "Fork"

![ForkBtn](https://www.earthdatascience.org/images/earth-analytics/git-version-control/githubguides-bootcamp-fork.png)

2. Click on "Create Fork"
![](https://github.com/jccaropino7786/legendary-phase1-project/blob/main/images%20and%20gifs/create%20fork.PNG?raw=true)

*If it doesn't redirect to your own forked repository*
    -click on your own profile (top right)
    -click "Your repository"
    -click on "legendary-phase1-project"

3. Click "<> Code" and then a drop down will show

![](https://github.com/jccaropino7786/legendary-phase1-project/blob/main/images%20and%20gifs/copy%20SSH.PNG?raw=true)

4. Click "SSH" and then copy that to the clipboard

5. Open up your terminal and find a place to place the it

6. Type

> git clone

then right click or ctrl + v/command + v,

then hit enter/return

type

> ls

Look for the file "phase-3-group-project"

type

> cd phase-3-group-project

type

> code .
 
 # Then your visual studio should open.

Inside your terminal in the VScode we'll want to seed our mock data and start the server

type

> bundle exec rake db:seed

This will seed the mock data
Then, type.

> rake server

This will start our backend API


> Now please head on over to https://github.com/TitleXp/phase-3-project-front-end