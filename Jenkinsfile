pipeline {
    // agent any
    agent {
        node { label 'kong-windows' }
    }
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
            //     branch 'main'
            // }
            parallel {
                
                stage('Branch A') {
                    // agent {
                    //     node { label 'master' }
                    // }
                    steps {
                        echo "On Branch A"
                        sh 'sh notfound.sh'
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
            }
        }
    }
}
