# jenkins-trigger - project 3
Infra Required
1. ec2 instance - t2.medium and above
    
>created a shell script for installation of all dependencies in .sh file for easy installation of all software packages
>created an ec2 instance and copied the .sh file using scp command from host pc to remote pc
	scp -i <pathofprivatekey> <pathoffile to copy> <username@remote:pathofdirectorytocopy>
>changed the file to executable and run the file
	chmod +x install_dependencies.sh
	./install_dependencies.sh
>all softwares are installed (GIT, DOCKER, JAVA, JENKINS, MAVEN) 
>open jenkins server through browser
>THE GOAL IS TO TRIGGER BUILD ON EVERY GIT PUSH CMD – CREATE A WEB HOOK IN GITHUB
	>go to github repository of codebase > settings > webhooks > add webhook
	>paste the jenkins URL at payload URL
		eg http://23.343.343.323:8080/github-webhook/
	>content type to json
	>select the event to trigger this webhook > add webhook
>Go to jenkins > new job > pipeline > 
	>select Build Triggers as Github hook trigger for GITScm polling	
	>In pipeline definition select > pipeline script from SCM
	>select SCM as git
	>paste the github repo URL 
	>change the branch if necessary
	>script path > Jenkinsfile > save

>Now clone the github repo to your local 
	>add changes 
	>commit changes
	>push to github 
>check jenkins build the job or not
	
