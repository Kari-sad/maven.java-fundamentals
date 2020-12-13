pipeline {
    agent any

    tools {
        maven "maven-3" // You need to add a maven with name "maven-3" in the Global Tools Configuration page
    }    
    stages {
        stage('SCM Checkout') {
            steps {
                sh 'git clone https://github.com/curriculeon-student/maven.java-fundamentals'
            }
        }

        stage('Compile-Package') {
            steps {
                def mvnHome =  tool 'maven-3'               
                sh "${mvnHome}/bin/mvn/package"
            }
        }
    }
}
