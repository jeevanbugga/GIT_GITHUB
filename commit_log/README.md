- RUN this file in inside GIT cloned repository.
- Command to run- ./commit_log_exist.sh ${COMMIT_NUMBER} ${Action} ${Depth}
- If you select action as Display_commit with an depth value of 3,Then it will display latest 3 commits.
__Sample output__
--------------------------------------------------------
   Please find latest 3 commits details below
--------------------------------------------------------
------------------------------------------
Commit-1:
  - Commit: 9c1XXXXXXXXX0e7
  - Author: user1
  - Date: Fri May 19 22:01:32 2023 +0530
  - Message: Added flag to validate plan selection step 
------------------------------------------
Commit-2:
  - Commit: 7d0XXXXXXXXXXXXXXXXXXXXXXXXXX
  - Author: User2
  - Date: Thu May 18 15:21:18 2023 -0400
  - Message: Event name not populated in Enrollment Wizard
------------------------------------------
Commit-3:
  - Commit: 1bXXXXX45gXXXXXXXXXXXXXXXXXX
  - Author: Rest call by system user
  - Date: Thu May 18 13:18:51 2023 -0400
  - Message: Updatem POM files

- If you select action as exist with the commit you want to verify,It will print whether the commit exist in branch or not.
__Sample output if commit exist.__

------------------------------------------
Commit exist please find details below:
------------------------------------------
  - Commit: 3ab***********************
  - Author: jeevan Bugga
  - Date: Mon May 22 03:21:12 2023 -0400
  - Message: Updated the Display functionality
------------------------------------------

__sample output if commit not exist__
-----------------------------------------------------------------------------------------------
  Commit 3ab****************** does not exist on the branch.
-----------------------------------------------------------------------------------------------

