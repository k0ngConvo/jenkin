pipeline {
    
    agent any  

    stages {

        stage('Init'){
            steps {
                echo 'Init'
                echo '******************************'
            }
        }

        stage('Run shell script') {
            steps {
                echo 'Run shell script'
                sh 'chmod 744 test.sh'
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