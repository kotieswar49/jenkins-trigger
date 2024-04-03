pipeline {
    agent any
    
    triggers {
        githubPush()
    }
    stages {
        stage('check'){
            steps {
		echo 'Hello world'
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

