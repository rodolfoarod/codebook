#!/bin/sh
# GIT - Cheat Sheet

## Help

$ git help <command>

# or

$ git <command> -h

## Config repositories in a project

# Add fork repository

$ git remote add <your-name> <url-fork-repository>

# Add origin repository

$ git remote add origin <url-origin-repository>

## Clone a new project

# Clone new project

$ git clone <url-origin-repository>
$ cd <cloned-project-name>

# Add a new remote repository (fork)

$ git remote add <your-name> <url-fork-repository>

# Get remote repositories

$ git remote -v

## While working

# Check branch status

$ git status

# Check git branch tree

$ gitk

# Check git tree

$ gitk --all

## Save changes

# Add added, modified and deleted files to staging

$ git add -A

# Commit staged files

$ git commit -m "<commit-message>"

## Get changes from origin repository

# Change to local master branch

$ git checkout master

# Get changes from origin remote repository

$ git pull origin master

# Change back to feature branch

$ git checkout <feature-branch>

# Rebase feature branch with master branch

$ git rebase master

## Send changes to your fork repository

# Change to feature branch

$ git checkout <feature-branch>

# Send changes to fork repository

$ git push <your-name> <feature-branch>

## Delete a feature branch

$ git checkout master
$ git branch -d <feature-branch>

# Remove pointer from remote branch

$ git remote prune <fork>
$ git remote prune origin

## Create a new feature branch

$ git checkout master
$ git checkout -b <feature-branch>

## Other commands

# Revert file to last commit

$ git checkout <path-to-file>

# Revert all files to last commit

$ git checkout .

# Force revert all files to last commit

$ git checkout . -f

# Clear unstaged files

$ git clean

# Clear unstaged folders

$ git clean -d

# Force clear

$ git clean -f

# Reset git credentials

$ git config --global --unset credential.helper
$ git config --system --unset credential.helper

## Git Rebase

# Interactive rebase session

$ git checkout feature
$ git rebase -i master

# Squashing

$ git log --oneline
$ git rebase -i HEAD~<num_of_commits>
$ git push origin feature_branch --force-with-lease
