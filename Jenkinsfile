pipeline {
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
		environment {
			HOME="."
                }
            	steps {
                	script{
				def mvnHome = tool name: 'maven-3', type: 'maven'
				sh "${mvnHome}/bin/mvn/package"
		}
            }
        }
    }
}