pipeline {
    environment {
        JAVA_TOOL_OPTIONS = "-Duser.home=/home/jenkins"
    }
    agent {
        dockerfile {
            args "-v /tmp/maven:/home/jenkins/.maven-3 -e MAVEN_CONFIG=/home/jenkins/.maven-3" 
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