#!/bin/bash

latest_branch_commits=$(git log -2 --format="%H")
latest_branch_commit=$(echo "$latest_branch_commits" | head -n 1)
second_latest_branch_commit=$(echo "$latest_branch_commits" | tail -n 1)

echo "-------------------------------------------------------------------------------------------------------------"
echo "Branch: $(basename $(pwd))/"
echo "-------------------------------------------------------------------------------------------------------------"
echo "      Latest build   - Commit: $latest_branch_commit                                                         "
echo "                     - Author: $(git log -1 --format="%an" $latest_branch_commit)                            "
echo "                     - Date: $(git log -1 --format="%ad" $latest_branch_commit)                              "
echo "                     - Message: $(git log -1 --format="%s" $latest_branch_commit)                            "
echo
echo "      Second Latest  - Commit: $second_latest_branch_commit                                                  "
echo "                     - Author: $(git log -1 --format="%an" $second_latest_branch_commit)                     "
echo "                     - Date: $(git log -1 --format="%ad" $second_latest_branch_commit)                       "
echo "                     - Message: $(git log -1 --format="%s" $second_latest_branch_commit)                     "

echo "-------------------------------------------------------------------------------------------------------------"
echo "                   Please find the commits for each individual folder below.                                 "
echo "-------------------------------------------------------------------------------------------------------------"

# List all folders in the branch

folders=$(ls -d */)

for folder in $folders; do
  folder=${folder%/}  # Removes slash (/) from folder name

 # Get the latest two commits for the folder
  latest_commits=$(git log -2 --format="%H" -- $folder)

 # Get the latest commit information
  latest_commit=$(echo "$latest_commits" | head -n 1)
  latest_commit_author=$(git log -1 --format="%an" $latest_commit)
  latest_commit_date=$(git log -1 --format="%ad" $latest_commit)
  latest_commit_message=$(git log -1 --format="%s" $latest_commit)

 # Get the second latest commit information
  second_latest_commit=$(echo "$latest_commits" | tail -n 1)
  second_latest_commit_author=$(git log -1 --format="%an" $second_latest_commit)
  second_latest_commit_date=$(git log -1 --format="%ad" $second_latest_commit)
  second_latest_commit_message=$(git log -1 --format="%s" $second_latest_commit) 
  
  echo "$folder/"
  echo "------------------------------------------"
  # Print the latest commit information
  echo "Latest Commit:"
  echo "  - Commit: $latest_commit"
  echo "  - Author: $latest_commit_author"
  echo "  - Date: $latest_commit_date"
  echo "  - Message: $latest_commit_message"
  echo
 # Print the second latest commit information
  echo "Second Latest Commit:"
  echo "  - Commit: $second_latest_commit"
  echo "  - Author: $second_latest_commit_author"
  echo "  - Date: $second_latest_commit_date"
  echo "  - Message: $second_latest_commit_message"

  echo 
  
  echo "------------------------------------------"
  
done
echo "------------------------------------------------------------------"
echo "                      Commits Displayed                           "
echo "------------------------------------------------------------------"
