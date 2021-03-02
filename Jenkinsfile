pipeline {
    agent any
    options {
        parallelsAlwaysFailFast()
        timeout(time: 5, unit: 'MINUTES')
    }
    stages {
        stage('Non-Parallel Stage') {
            steps {
                echo 'This stage will be executed first.'
            }
        }
        stage('Parallel Stage') {
            // when {
            //     branch 'master'
            // }
            parallel {
                    
                stage('Branch A') {
                    node { label "master" 
                        echo "echo form branch B"
                        // error "failure test. It’s work"
                    
                    }
                }
                stage('Branch B') {
                    // agent {
                    //     label "kong-windows"
                    // }
                    steps {
                        echo "echo form branch B"
                        sh 'sh backend_build.sh'
                    }
                }
                // stage('kong-windows') {
                //     agent {
                //         label "kong-windows"
                //     }
                //     stages {
                //         stage('Nested 1') {
                //             steps {
                //                 echo "In stage Nested 1 within Branch C"
                //             }
                //         }
                //         stage('Nested 2') {
                //             steps {
                //                 echo "In stage Nested 2 within Branch C"
                //             }
                //         }
                //     }
                // }
            }
        }
    }
}
