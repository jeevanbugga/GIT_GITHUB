__Branch Recreation__ <br>
- The code first discards target branch from GIT HUB and creates a new target Git branch by taking the source code from GitHub source branch and then pushes the newly created branch to GitHub.<br>

- Command: <br>
'''
__ansible-playbook main.yml -e "source_branch=${SOURCE_BRANCH} target_branch=${REBASE_BRANCH} commit=${COMMIT_NUMBER} github_repo=repository git_user=github_user git_pass=${GIT_PASSWORD}"__''' <br>

- Please find the Jenkins file at below path.<br>
__https://github.com/jeevanbugga/GIT_GITHUB.git/Jenkins_files/recreate_branch_Jenkinsfile__ <br>
