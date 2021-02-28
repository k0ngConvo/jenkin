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
                echo "read more info : ${env.TEST_URL}"
                // sh 'pwd'
                echo '******************************'
            }
        }

    stage('run-parallel-branches') {
        steps {
            parallel(
                main: {
                    echo "This is branch main"
                },
                test: {
                    echo "This is branch test"
                }
            )
    }
}


    }
}