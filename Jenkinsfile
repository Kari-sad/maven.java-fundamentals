pipeline {
   environment {
        PATH = "/opt/apache-maven-3.6.3/bin:$PATH"
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