pipeline {
    agent any
    
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
                sh 'python demo.py'
	        }	
        }
    }	
}
