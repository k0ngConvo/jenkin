pipeline {
    // agent any
    agent {
        node { label 'kong-windows' }
    }
    // options {
    //     parallelsAlwaysFailFast()
    // }
    stages {
        stage('Non-Parallel Stage') {
            steps {
                echo 'This stage will be executed first.'
            }
        }
        stage('Parallel Stage') {
            // when {
            //     branch 'main'
            // }
            parallel {
                
                stage('Branch A') {
                    // agent {
                    //     node { label 'master' }
                    // }
                    steps {
                        echo "On Branch A"
                    }
                }
                stage('Branch B') {
                    // agent {
                    //     node { label 'master' }
                    // }
                    steps {
                        echo "On Branch B"
                    }
                }
                stage('Branch C') {
                    // agent {
                    //     node { label 'kong-windows' }
                    // }
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
