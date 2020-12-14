pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
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
                	script{
				def mvnHome = tool name: 'maven-3', type: 'maven'
				sh "${mvnHome}/bin/mvn/package"
		}
            }
        }
    }
}