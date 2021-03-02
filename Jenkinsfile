pipeline {
   agent { label 'master' }
   stages {
       stage('before') {
           steps {
               println("before")
           }
       }
       stage('para') {
           parallel {
               stage('apple') {
                   steps {
                       script {
                           try {
                            sh 'sh notfound.sh'
                        } catch (e) {
                            echo('detected failure: Successful stage')
                        throw(e)

                       }
                        
                   }
               }
               stage('banana') {
                   steps {
                       println("banana 1")
                       sleep(20 * Math.random())
                       println("banana 2")
                   }
               }
               stage('peach') {
                   steps {
                       println("peach 1")
                       sleep(20 * Math.random())
                       println("peach 2")
                   }
               }
           }
       }
       stage('after') {
           steps {
               println("after")
           }
       }
   }
}
}