pipeline {
    agent any
    
    triggers {
        githubPush()
    }
    stages {
        stage('check'){
            steps {
		echo 'Hello'
	    }
	} 
    }
    	stage('build') {
            steps {
                sh 'python --version'
	    }	
        }
    }	
    
}

