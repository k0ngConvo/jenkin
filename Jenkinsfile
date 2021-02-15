pipeline {
    
    agent any  

    environment {
        TEST_URL = 'https://www.jenkins.io/'
    }

    stages {

        stage('Init'){
            steps {
                echo 'Init'
                echo "build number : ${env.BUILD_NUMBER}"
                echo "registry url : ${env.TEST_URL}"
                echo '******************************'
            }
        }

        stage('Build Code Frontend') {
            steps {
                echo 'Build Code Frontend'
                echo '******************************'
            }
        }

        stage('Test Code Backend') {
            steps {
                echo 'Test Code Backend'
                echo '******************************'
            }
        }

        stage('Build Code Backend') {
            steps {
                echo 'Build Code Backend'
                echo '******************************'
            }
        }

        stage('Test Code Frontend') {
            steps {
                echo 'Test Code Frontend'
                echo '******************************'
            }
        }

        stage('Run shell script') {
            steps {
                echo 'Run shell script'
                sh 'pwd'
                sh 'sh test.sh'
                echo '******************************'
            }
        }

        // stage('Yarn Build') {
        //     steps {
        //         echo 'Yarn Build'
        //         echo '******************************'
        //     }
        // }
        
        stage('Deploy') {
            steps{
                echo 'Deploy'
                echo '******************************'
            }
        }
    }
}