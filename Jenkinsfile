pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-u root'
        }
    }
    stages {
        stage('SCM Checkout') {
            steps {
                sh 'git clone https://github.com/curriculeon-student/maven.java-fundamentals'
            }
        }

        stage('Compile-Package') {
            steps {
                def mvnHome = tool name: 'maven-3', type: 'maven'
                sh "${mvnHome}/bin/mvn/package"
            }
        }
    }
}

pipeline {
    agent {
        docker { 
			image 'node:14-alpine' 
		}
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
