#!/bin/bash

# List all folders in the branch

folders=$(ls -d */)
echo "-------------------------------------------------------------------------------------------------------------"
echo "      Latest build commit: $(git log -1 --format="%H")                                                       "
echo "                   Author: $(git log -1 --format="%an")                                                      "
echo "                   Date: $(git log -1 --format="%ad")                                                        "
echo "                   commit message: $(git log -1 --format="%s")                                               "
echo "-------------------------------------------------------------------------------------------------------------"
echo "                    Please find indivudual folder commits below                                              "
echo "-------------------------------------------------------------------------------------------------------------"
for folder in $folders; do
  folder=${folder%/}  # Removes slash (/) from folder name

  # Get the latest commit hash for the folder

  latest_commit=$(git log -1 --format="%H" -- $folder)

  # Get the latest commit information

  commit_message=$(git log -1 --format="%s" $latest_commit)

  commit_date=$(git log -1 --format="%ad" $latest_commit)

  author_name=$(git log -1 --format="%an" $latest_commit)
 
  echo "$folder"
  echo "------------------------------------------"
  echo "commit: $latest_commit"
  echo "author: $author_name"
  echo "message: $commit_message"
  echo "Date: $commit_date"
  echo "------------------------------------------"
  
done
echo "------------------------------------------------------------------"
echo "                         END                                      "
echo "------------------------------------------------------------------"
