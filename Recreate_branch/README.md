The code creates a Git branch by taking the source code from GitHub branch and then pushes the newly created branch to GitHub.
Command: ansible-playbook main.yml -e "source_branch=${SOURCE_BRANCH} target_branch=${TARGET_BRANCH} commit=${COMMIT_NUMBER} github_repo=${GITHUB_REPO} git_user=github_user_name git_pass=${GIT_PASSWORD}"
--
Please find the Jenkins file at below path.
https://github.com/jeevanbugga/GIT_GITHUB.git/Jenkins_files/Branch_creation_Jenkinsfile
--