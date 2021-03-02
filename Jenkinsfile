pipeline {
    agent none 
    stages {
        stage('Example Build') {
            agent { node {label: 'master'} } 
            steps {
                echo 'Hello, Maven'
                // sh 'mvn --version'
            }
        }
        stage('Example Test') {
            agent { node {label: 'master'} } 
            steps {
                echo 'Hello, JDK'
                // sh 'java -version'
            }
        }
    }
}