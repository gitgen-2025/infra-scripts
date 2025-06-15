#!/bin/bash

# Script to add, commit, and push changes to Github
#Author:gitgen2025

print_header(){
 echo -e "\n\033[1:34m $1\033[0m"
}

#Step 1 : Check for Git repo
print_header "Checking if you're in a Git repo..."
if [ ! -d .git ]; then 
  echo "This directory is not a Git repository.Run 'git init' first"
  exit 1
else
 echo -e "You are in a Git repository."
 repo_url=$(git remote get-url origin 2>/dev/null)
 if [ -n "repo_url" ]; then
   echo -e "Remote 'origin' is set to: $repo_url"
 else
   echo -e "No remote 'origin' found. You can add one using :"
   echo -e " git remote add origin <your-repo-URL>"
 fi 
fi

#Step 2: Ask for commit message
read -rp "Enter commit message:"
commit_message

#Step 3:Add all changes
print_header "Committing changes..."
git commit -m "$commit_message"

Step 5:Push to current branch
print_header "Pushing to Github..."
git push

print_header "Push complete!"
