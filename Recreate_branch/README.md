1.The code creates a Git branch by taking the source code from GitHub branch and then pushes the newly created branch to GitHub.<br>
2.Command: <br>
__ansible-playbook main.yml -e "source_branch=${SOURCE_BRANCH} target_branch=${TARGET_BRANCH} commit=${COMMIT_NUMBER} github_repo=${GITHUB_REPO} git_user=github_user_name git_pass=${GIT_PASSWORD}"__ <br>
3.Please find the Jenkins file at below path.<br>
__https://github.com/jeevanbugga/GIT_GITHUB.git/Jenkins_files/Branch_creation_Jenkinsfile__ <br>
