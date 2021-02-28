pipeline {
    agent any
    // agent {
    //     node { label 'kong-windows' }
    // }
    // options {
    //     parallelsAlwaysFailFast()
    // }
    // stages {
    //     stage('Non-Parallel Stage') {
    //         steps {
    //             echo 'This stage will be executed first.'
    //         }
    //     }
        stage('Parallel Stage') {
            // when {
            //     branch 'main'
            // }
            parallel {
                
                stage('master 1') {
                    agent {
                        node { label 'master' }
                    }
                    steps {
                        echo "On master node"
                    }
                }
                stage('master 2') {
                    agent {
                        node { label 'master' }
                    }
                    steps {
                        echo "On master node"
                    }
                }
                stage('local') {
                    agent {
                        node { label 'kong-windows' }
                    }
                    stages {
                        stage('Nested 1') {
                            steps {
                                echo "In stage Nested 1 on local"
                            }
                        }
                        stage('Nested 2') {
                            steps {
                                echo "In stage Nested 2 on local"
                            }
                        }
                    }
                }
            }
        }
    }
}
