- RUN this file in inside GIT cloned repository.<br>
- Let asuume we have 3 folders in our main branch namer invest,retire and disbursment
- - if you run script **./head_head_minus_1_commit.sh** , it will display latest two commits of branch and all sub folders <br>
__sample output__
-------------------------------------------------------------------------------------------------------------
Branch: main/
-------------------------------------------------------------------------------------------------------------
      Latest build   - Commit: **************
                     - Author: user1
                     - Date: Fri May 19 22:01:32 2023 +0530                              
                     - Message: Added flag to validate plan selection step (#160)                            

 

      Second Latest  - Commit: dfg***********
                     - Author: sharma
                     - Date: Thu May 18 15:21:18 2023 -0400                       
                     - Message: Event name not populated in Enrollment Wizard (#139)                     
-------------------------------------------------------------------------------------------------------------
                   Please find the commits for each individual folder below.                                 
-------------------------------------------------------------------------------------------------------------
invest/
------------------------------------------
Latest Commit:
  - Commit: **********************
  - Author: Raju
  - Date: Sun May 7 22:06:00 2023 +0000
  - Message: updated properties file with network.

Second Latest Commit:
  - Commit: ******************
  - Author: Jeevan
  - Date: Wed May 3 01:38:14 2023 +0000
  - Message: Created BC branch

------------------------------------------
retire/
------------------------------------------
Latest Commit:
  - Commit: **********************
  - Author: koushik
  - Date: Sun May 7 22:09:27 2023 +0000
  - Message: Reverted change

Second Latest Commit:
  - Commit: ***********************
  - Author: Jeevan
  - Date: Wed May 3 01:38:14 2023 +0000
  - Message: Created BC branch
------------------------------------------
disbursment/
------------------------------------------
Latest Commit:
  - Commit: *****************
  - Author: Raju
  - Date: Sun May 7 22:17:30 2023 +0000
  - Message: DEPLOYMENT: updated properties file with network details.

Second Latest Commit:
  - Commit: ******************
  - Author: Jeevan
  - Date: Wed May 3 01:38:14 2023 +0000
  - Message: Created BC branch

------------------------------------------
------------------------------------------------------------------
                      Commits Displayed                           
------------------------------------------------------------------


- if you run script **./commit_log_exist.sh** ,it will display latest commit of branch and all sub folders<br>
__sample output__
-------------------------------------------------------------------------------------------------------------
      Latest build commit: 9fdnfd68*************
                   Author: uder1
                   Date: Fri May 19 22:01:32 2023 +0530
                   commit message: Added flag to validate plan selection step
-------------------------------------------------------------------------------------------------------------
                    Please find indivudual folder commits below
-------------------------------------------------------------------------------------------------------------
invest
------------------------------------------
commit: 38***********************
author: Vthomu
message: updated trade details
Date: Sun May 7 22:06:00 2023 +0000
------------------------------------------
retire
------------------------------------------
commit: 245***********************
author: rajuv
message: DEPLOYMENT: updated properties file with network 2.0 details.
Date: Sun May 7 22:09:27 2023 +0000
------------------------------------------
disbursment
------------------------------------------
commit: 6e*******************
author: vthor
message: updated properties file.
Date: Sun May 7 22:09:20 2023 +0000
------------------------------------------
------------------------------------------------------------------
                         END
------------------------------------------------------------------
