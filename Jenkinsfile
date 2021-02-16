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
                a: {
                    echo "This is branch a"
                },
                b: {
                    echo "This is branch b"
                }
            )
    }
}


    }
}