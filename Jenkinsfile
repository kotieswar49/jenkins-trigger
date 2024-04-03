pipeline {
    agent any

    environment {
        registry = "koticoder/python-jenkins"
        registryCredential = "Docker_hub"
        githubCredential = "Git_hub"
        dockerImage = ''
    }
    
    triggers {
        githubPush()
    }
    stages {
        stage('checkout code'){
            steps {
                git branch: 'main', url: 'https://github.com/kotieswar49/jenkins-trigger.git'
	    }
	} 
    
    	stage('build') {
            steps {
                script {
                    img = registry + "${env.BUILD_ID}"
                    dockerImage = docker.build("${img}")
                }
	        }	
        }
    }	
}
