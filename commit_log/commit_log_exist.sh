#!/bin/bash

commit_sha=$1
action=$2
depth=$3

if [ "$action" == "Display_commit" ]; then
 # Process and display commit details
 echo "--------------------------------------------------------"
 echo "   Please find latest $depth commits details below"
 echo "--------------------------------------------------------"

 for ((i=1; i<=depth; i++)); do
   latest_commits=$(git log -n $i --format="%H")
   # Fetch the last n commits details
   latest_commit=$(echo "$latest_commits" | tail -n 1)
   latest_commit_author=$(git log -1 --format="%an" $latest_commit)
   latest_commit_date=$(git log -1 --format="%ad" $latest_commit)
   latest_commit_message=$(git log -1 --format="%s" $latest_commit)

   echo "------------------------------------------"
  # Print the latest commit information
   echo "Commit-$i:"
   echo "  - Commit: $latest_commit"
   echo "  - Author: $latest_commit_author"
   echo "  - Date: $latest_commit_date"
   echo "  - Message: $latest_commit_message"

 done

elif [ "$action" == "exist" ]; then
 # Check if the commit exists
 if git show --quiet --format="%H" $commit_sha >/dev/null 2>&1; then
   # Get commit details
   commit_details=$(git log -n 1 $commit_sha --format="%H")
   # Fetch the last n commits details
   commit=$(echo "$commit_details" | head -n 1)
   commit_author=$(git log -1 --format="%an" $commit_details)
   commit_date=$(git log -1 --format="%ad" $commit_details)
   commit_message=$(git log -1 --format="%s" $commit_details)
   
   
   echo "------------------------------------------"
   echo "Commit exist please find details below:"
   echo "------------------------------------------"
   echo "  - Commit: $commit"
   echo "  - Author: $commit_author"
   echo "  - Date: $commit_date"
   echo "  - Message: $commit_message"
   echo "------------------------------------------"

 else
   echo "-----------------------------------------------------------------------------------------------"
   echo "  Commit $commit_sha does not exist on the branch."
   echo "-----------------------------------------------------------------------------------------------"
 fi

else
 echo "Invalid action specified. Please provide 'depth' or 'exist' as the action."
fi
