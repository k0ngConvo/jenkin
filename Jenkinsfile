pipeline {
    agent any
        stages {
        stage('auto test') {
            parallel {
                stage('Run iOS emu') {
                    steps {
                        sh 'xcrun instruments -t "SwiftUI" -w "iPhone 8 (14.5) [9FC7FCA8-0215-4E44-8F37-4E31C4CED369] (Simulator)"'
                    }
                }
                stage('Run Appium Server') {
                    steps {
                        sleep(50)
                        sh 'appium --session-over --allow-insecure chromedriver_autodownload
'
                        //sh 'sh appium_server.sh 4723'
                    }
                }
                stage('run test') {
                    steps {
                        // sleep(15)
                        // sh 'sh clean_docker.sh'
                        // sh 'adb devices'
                        // sh 'adb kill-server && sudo adb start-server'
                        sleep(60)
                        dir('EkoAppiumAutomation') {
                            sh 'ls'
                            sh 'mvn clean test -P ios -Dtest=LoginTest'
                        // script {
                        //     if (env.BUILD_TYPE == 'class_name') {
                        //     echo 'in if'
                        //     sh 'sh ../run_test_by_class.sh ${Tag} ${ADB_Port}'
                        //     //classname
                        //     //tag
                        //     } else {
                        //     sh 'sh ../run_test_by_tag.sh ${Tag} ${ADB_Port}'
                        //     }
                        // }
                        }
                        sh 'ls'
                    // sh 'sh clean_docker.sh ${ADB_Port}'
                    // sh 'sudo kill \$(lsof -t -i :${Appium_Port})'
                    }
                }
            }
        }
        }
}
