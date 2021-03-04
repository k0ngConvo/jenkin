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
            parallel {
                stage('Branch A') {
                    steps {
                        sh 'sh test.sh A'
                        error 'failure test. It’s work'
                    }
                }
                stage('Branch B') {
                    steps {
                        sh 'sh test.sh B'
                    }
                }
                stage('Branch C') {
                    steps {
                        sh 'sh test.sh C'
                    }
                }
                stage('Branch D') {
                    steps {
                        sh 'sh test.sh D'
                    }
                }
                stage('Branch E') {
                    steps {
                        sh 'sh test.sh E'
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
