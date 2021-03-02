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
                agent {
                    node { label "master" }
                    stage('Branch A') {
                    steps {
                        echo "echo form branch B"
                        // error "failure test. It’s work"
                    }
                }
                }
                agent {
                    node { label "kong-windows" }
                    stage('Branch B') {
                    steps {
                        echo "echo form branch B"
                        sh 'sh backend_build.sh'
                    }
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
