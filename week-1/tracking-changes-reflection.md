1. How does tracking and adding changes make developers' lives easier?
Tracking changes allows developers to work in a team without conflicts in their work on a big project. With so many different parts in a project worked on by so many people, tracking the changes made is necessary in order to ensure the integrity of the project, in case a member of the project messes up the code.

2. What is a commit?
A commit is making a set of changes to a project permanent. After making numerous changes to a project, the developers will make a commit and update the master branch of the project.

3. What are the best practices for commit messages?
Be as thorough as possible, include as much detail as possible as well.

4. What does the HEAD^ argument mean?
the HEAD^ argument means 'the previous commit', so when resetting to the previous commit, we would enter the command git reset --soft HEAD^, which translates to 'reset to the previous commit.'

5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
The first stage is to create a new branch and work on that branch. After finishing your work, you commit the changes made to the master branch. The second stage is to push your commit off to Github. On Github, you'll have to submit a new pull request and merge your commit with the master repo online. After that's done comes the third stage, pulling the repo on Github to your computer.

6. Write a handy cheatsheet of the commands you need to commit your changes.
git status
git pull
git checkout -b new-branch
# do your work here
git add . (or <filename>)
git commit -m "your message here" (or -v)
git push origin new-branch

# then you go on github, submit new pull request, merge branches, then you're good to go for your pull request from github

git checkout master

git pull origin master

# OR

git fetch origin master

git merge origin/master

7. What is a pull request and how do you create and merge one?
A pull request submits your contributions to a project. In order to create a pull request on github, you'd have to press 'new pull request' on your desired repo. Afterwards, you'd select your base (master) and compare (new commit). After you confirm this request, you're asked to merge the previous commit with the master branch. After you merge the two, you should delete the new feature branch because it's already included into the master branch.

8. Why are pull requests preferred when working with teams?
Pull requests are preferred because it keeps track of who's making changes to the master branch. The authority to confirm the pull request isn't always with every developer, another developer might have the permissions to confirm a pull request so that he/she can review the commit before merging it with the master branch.