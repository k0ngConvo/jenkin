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
                node("master") {
    timeout(unit: 'SECONDS', time: 5) {
        stage("One"){
            sleep 10
            echo 'hello'
        }
    }
}
node("master") {
    timeout(unit: 'SECONDS', time: 5) {
        stage("One"){
            sleep 10
            echo 'hello'
        }
    }
}
                    
                // agent {
                //     node { label "kong-windows" }
                //     stage('Branch B') {
                //     steps {
                //         echo "echo form branch B"
                //         sh 'sh backend_build.sh'
                //     }
                // }
                // }

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
