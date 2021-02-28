pipeline {
    agent any
    options {
        parallelsAlwaysFailFast()
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
                stage('master') {
                    agent {
                        label "master"
                    }
                    steps {
                        echo "master"
                    }
                }
                stage('kong-windows') {
                    agent {
                        label "kong-windows"
                    }
                    steps {
                        echo "kong-windows"
                    }
                }
                stage('kong-windows') {
                    agent {
                        label "kong-windows"
                    }
                    stages {
                        stage('Nested 1') {
                            steps {
                                echo "In stage Nested 1 within Branch C"
                            }
                        }
                        stage('Nested 2') {
                            steps {
                                echo "In stage Nested 2 within Branch C"
                            }
                        }
                    }
                }
            }
        }
    }
}
