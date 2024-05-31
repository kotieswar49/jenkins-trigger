# jenkins-trigger - project 3
Infra Required
1. ec2 instance - t2.medium and above
2. created a shell script for installation of all dependencies in .sh file for easy installation of all software packages
3. created an ec2 instance and copied the .sh file using scp command from host pc to remote pc
	# scp -i <pathofprivatekey> <pathoffile to copy> <username@remote:pathofdirectorytocopy>
4. changed the file to executable and run the file
	# chmod +x install_dependencies.sh
	# ./install_dependencies.sh
5. all softwares are installed (GIT, DOCKER, JAVA, JENKINS, MAVEN) 
6. open jenkins server through browser
7. THE GOAL IS TO TRIGGER BUILD ON EVERY GIT PUSH CMD – CREATE A WEB HOOK IN GITHUB
	>go to github repository of codebase > settings > webhooks > add webhook
	>paste the jenkins URL at payload URL
		eg http://23.343.343.323:8080/github-webhook/
	>content type to json
8. select the event to trigger this webhook > add webhook
9. Go to jenkins > new job > pipeline > 
	>select Build Triggers as Github hook trigger for GITScm polling	
	>In pipeline definition select > pipeline script from SCM
	>select SCM as git
	>paste the github repo URL 
	>change the branch if necessary
	>script path > Jenkinsfile > save

10. Now clone the github repo to your local 
	>add changes 
	>commit changes
	>push to github 
11. check jenkins build the job or not
	
