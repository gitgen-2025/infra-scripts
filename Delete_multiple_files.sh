#!/bin/bash

#Script to delete multiple files from a Git repo and push the changes 

#Step 1 List files to delete
 
echo "Enter the names of the files to delete from Github (space-separated):"
read FILE_LIST

#Convert the string into an array manually
FILES=$(echo "$FILE_LIST")

#Check if input was empty
if [ -z "$FILES" ]; then
  echo "No files entered.Exiting."
  exit 1` 
fi

#Step 2 Prepare to delete 
echo "Preparing to delete the following files from Github:"
for f in $FILES; do
  echo "-$f"
  git rm --cached "$f"
done

#Step 3 Commit Changes
git commit -m "Delete  files from Github only "
echo "Changes commited."

#Step 5:Push to remote
git push
echo "Changes pushed to Github"

