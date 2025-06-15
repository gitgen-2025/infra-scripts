#!/bin/bash

#Script to delete multiple files from a Git repo and push the changes 

#Step 1 List files to delete
 
echo "Deleting the following files:"
FILES=("file1.txt" "file2.py" "file3.md" "file4.js" "file5.html""file6.json")
for f in "${FILES[@]}"; do echo " -$f"
done

#Step 2: Remove files locally
rm "${FILES[@]}"
echo "Files deleted locally."

#Step 3:Stage Deletions
 git add "${FILES[@]}"
echo "Deletions Staged."

#Step 4 Commit Changes
git commit -m "Delete multiple files"
echo "Changes commited."

#Step 5:Push to remote
git push
echo "Changes pushed to Github"

