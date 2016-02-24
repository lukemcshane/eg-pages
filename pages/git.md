# Summary

git is a version control system.  
Using it requires some knowledge of the underlying data model  

# Basics

`git status`  
Shows the status of the repository in which you are located.  
`git diff`  
Shows the diff between the working directory and the most recent commit  
`git diff --staged`  
Shows the changes you would commit, if you subsequently run   
`git commit`  
This command creates a new commit. It is appended to whatever branch you are in.

# Advanced

`git log --name-only --oneline`  
Shows which files were modified, and the message, for each commit.
`git log --name-status --oneline`  
Include a prefix for what happened (modified/deleted/added etc).
`--name-only` and `--name-status` can also be used with `git show` and `git diff`.
