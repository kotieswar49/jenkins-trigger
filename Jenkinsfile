pipeline {
    agent any

    environment {
        dockerImage = "koticoder/python-jenkins"
        registryCredential = "Docker_hub"
        githubCredential = "Git_hub"        
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
                    docker.build(env.dockerImage) 
                }
	        }	
        }
    }	
}
