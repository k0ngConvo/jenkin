//Manage Jenkins -> Configure System -> Global Properties -> Environment Variables -> Add

// การ Build Code Frontend (Angular, VueJS, React, ect)
// การ Test Code Frontend
// การ Build Code Backend
// การ Test Code Backend
// การ Build Docker Image
// การ Push Docker Image ไปยัง Registry
// การ ออก Report
// การ Deploy

pipeline {
    
    agent any  

        environment {
        TEST_URL = 'https://www.jenkins.io/'
    }    

    stages {

        // steps {
        //         echo 'export variables/or env'
        //         echo '******************************'
        //     }

        //             steps {
        //         echo 'export variables/or env'
        //         echo '******************************'
                //       - run:
            }

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
        
        stage('Deploy') {
            steps{
                //do something not sure CD
                echo 'Deploy'
                echo '******************************'
            }
        }
    }
}