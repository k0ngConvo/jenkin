pipeline {
    agent {
        node { label 'master' }
    }

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
                    // agent {
                    //     label "master"
                    // }
                    steps {
                        echo 'step fail'
                        error 'failure test. It’s work'
                    }
                }
                stage('Branch B') {
                    // agent {
                    //     label "kong-windows"
                    // }
                    steps {
                        echo 'echo form branch B'
                        sh 'sh backend_build.sh'
                    }
                }
                stage('Branch C') {
                    // agent {
                    //     label "kong-windows"
                    // }
                    steps {
                        echo 'echo form branch C'
                        sh 'sh backend_build.sh'
                    }
                }
                stage('Branch D') {
                    // agent {
                    //     label "kong-windows"
                    // }
                    steps {
                        echo 'echo form branch D'
                        sh 'sh backend_build.sh'
                    }
                }
                stage('Branch E') {
                    // agent {
                    //     label "kong-windows"
                    // }
                    steps {
                        echo 'echo form branch E'
                        sh 'sh backend_build.sh'
                    }
                }
                stage('kong-windows') {
                    agent {
                        label 'kong-windows'
                    }
                    stages {
                        stage('Nested 1') {
                            steps {
                                echo 'In stage Nested 1 within Branch C'
                            }
                        }
                        stage('Nested 2') {
                            steps {
                                echo 'In stage Nested 2 within Branch C'
                            }
                        }
                    }
                }
            }
        }
    }
}
