pipeline {
    environment {
        JAVA_TOOL_OPTIONS = "-Duser.home=/home/jenkins"
    }
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    	
    stages {
        stage('SCM Checkout') {
            steps {
                sh 'git clone https://github.com/Kari-sad/maven.java-fundamentals'
            }
        }

        stage('Compile-Package') {
		   steps {
                	sh "mvn package"
		
            }
        }
    }
}