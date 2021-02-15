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
                sh 'pwd'
                // sh '/c/Windows/System32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/zxcc@script/test.sh'
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