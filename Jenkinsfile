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
                // echo "registry url : ${env.TEST_URL}"
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