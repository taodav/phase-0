* Paste a link to your [USERNAME].github.io repository.
taodav.github.io

* Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.
A repository is basically like a back-up of sorts of a program on a website/computer. We can make these backups on a website called Github. If we have a github account, we can go into the 'repositories' tab and click 'new' to make a new repository. To get this repository copied onto our computer, we have to go on our Command Line Interface. We first change our directory to the one where we want the repository in, then we input the command:

git clone <URL of repository>

The URL of the repository is given to you if you click the repository link in Github.

* Describe what open source means.
Open Source software is sharing the source code of a project with the public, along with all versions of the project. 

* What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?
Assess the importance of using licenses.
I think open source software is a great thing - seeing as it isn't a mandated thing, it opens doors for a lot of people and organizations to grow their projects if they want, and to even potentially benefit from this sharing. It might seem scary to allow other people to see and even copy your own code, but again this is purely a decision for the original developer.

That's why licenses exist - to protect the ideas of developers if they so choose to not share their projects.


* What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?
Because of the many, many, many times I've practiced with the entire making a pull request workflow, I feel like I'm really starting to be comfortable with the entire process of creating separate branches and committing those to the master branch. At first, I really struggled with remembering the flow of the entire process - what came first and what comes next. I always started my projects without creating a feature branch first, so changing that habit took a few tries and a few reflection entries. 

* Did you find any resources on your own that helped you better understand a topic? If so, please list it.

I was at first a bit confused at the concept of branch management because it was quite a complicated topic to dive into. After some research, I came across this website:

https://git-scm.com/book/en/v2/Git-Branching-Branch-Management

Listing out the branches you've created with git branch is a great visual representation of what's going on in the project. I also became aware of deleting branches on CLI only after this research - this will definitely come in handy in keeping all my branches organized.