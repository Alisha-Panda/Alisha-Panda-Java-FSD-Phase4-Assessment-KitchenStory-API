pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }
    // Got permission denied while trying to connect to the Docker daemon socket at unix.
    // sudo usermod -a -G docker jenkins
    // restart jenkins server ->  sudo service jenkins restart
    stages {
        
        stage('Maven Compile') {
            steps {
                echo '----------------- This is a compile phase ----------'
                sh 'mvn clean compile'
            }
        }
        
         stage('Maven Test') {
            steps {
                echo '----------------- This is a compile phase ----------'
                sh 'mvn clean test'
            }
        }
        
        stage('Maven Build') {
             steps {
                echo '----------------- This is a build phase ----------'
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                echo '----------------- This is a build docker image phase ----------'
                sh '''
                    docker image build -t Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory .
                '''
            }
        }

        stage('Docker Deploy') {
            steps {
                echo '----------------- This is a docker deployment phase ----------'
                sh '''
                 (if  [ $(docker ps -a | grep Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory | cut -d " " -f1) ]; then \
                        echo $(docker rm -f Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory); \
                        echo "---------------- successfully removed Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory ----------------"
                     else \
                    echo OK; \
                 fi;);
            docker container run --restart always --name Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory -p 8081:8081 -d Java-FSD-Phase4-Assessment-Ecommerce-KitchenStory
            '''
            }
        }
    }
}