pipeline {
    agent any

    environment {
        TEST_URL = 'https://www.jenkins.io/'
    }
    options {
        parallelsAlwaysFailFast()
        }

    stages {
        stage('Init') {
            steps {
                echo 'Init'
                echo "build number : ${env.BUILD_NUMBER}"
                echo "read more info : ${env.TEST_URL}"
                // sh 'pwd'
                echo '******************************'
            }
        }

        stage('Build Code Frontend') {
            steps {
                echo 'Build Code Frontend'
                sh 'sh frontend_build.sh'
                echo '******************************'
            }
        }

        stage('Test Code Frontend') {
            steps {
                echo 'Test Code Backend'
                sh 'sh frontend_test.sh'
                echo '******************************'
            }
        }

        stage('Build Code Backend') {
            steps {
                echo 'Build Code Backend'
                sh 'sh backend_build.sh'
                echo '******************************'
            }
        }

        stage('Test Code Backend') {
            steps {
                echo 'Test Code Frontend'
                sh 'sh backend_test.sh'
                echo '******************************'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy'
                echo '******************************'
            }
        }
    }
}
