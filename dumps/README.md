__Downloads code Zip dumps upto an specific commit__ <br>

- Command to run: <br>

__ansible-playbook main.yml  -e 'source_branch=${BRANCH_NAME} commit=${COMMIT_NUMBER} github_repo=${GITHUB_REPO} git_user=github_user git_pass=${GIT_PASSWORD}'__ <br>

- Please find the Jenkins file at below path.<br>
__https://github.com/jeevanbugga/GIT_GITHUB.git/Jenkins_files/Release_Dumps_Jenkinsfile__ <br>
