- RUN this file in inside GIT cloned repository.<br>
- Command to run- ./commit_log_exist.sh ${COMMIT_NUMBER} ${Action} ${Depth} <br>
- If you select action as Display_commit with an depth value of 3,Then it will display latest 3 commits. <br>
__Sample output__ <br>
-------------------------------------------------------- <br>
   Please find latest 3 commits details below<br>
--------------------------------------------------------<br>
------------------------------------------<br>
Commit-1:<br>
  - Commit: 9c1XXXXXXXXX0e7<br>
  - Author: user1<br>
  - Date: Fri May 19 22:01:32 2023 +0530<br>
  - Message: Added flag to validate plan selection step <br>
------------------------------------------<br>
Commit-2:<br>
  - Commit: 7d0XXXXXXXXXXXXXXXXXXXXXXXXXX<br>
  - Author: User2<br>
  - Date: Thu May 18 15:21:18 2023 -0400<br>
  - Message: Event name not populated in Enrollment Wizard<br>
------------------------------------------<br>
Commit-3:<br>
  - Commit: 1bXXXXX45gXXXXXXXXXXXXXXXXXX<br>
  - Author: Rest call by system user<br>
  - Date: Thu May 18 13:18:51 2023 -0400<br>
  - Message: Updatem POM files<br>

- If you select action as exist with the commit you want to verify,It will print whether the commit exist in branch or not.<br>

__Sample output if commit exist.__<br>

------------------------------------------<br>
Commit exist please find details below:<br>
------------------------------------------<br>
  - Commit: 3ab***********************<br>
  - Author: jeevan Bugga<br>
  - Date: Mon May 22 03:21:12 2023 -0400<br>
  - Message: Updated the Display functionality<br>
------------------------------------------<br>

__sample output if commit not exist__<br>
-----------------------------------------------------------------------------------------------<br>
  Commit 3ab****************** does not exist on the branch.<br>
-----------------------------------------------------------------------------------------------<br>

