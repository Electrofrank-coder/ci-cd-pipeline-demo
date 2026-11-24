pipeline {
    agent any

    stages {
        stage('Clonacion del repositorio') {
            steps {
                echo 'Jenkins ha descargado el codigo desde GitHub correctamente.'
            }
        }

        stage('Instalacion de dependencias') {
            steps {
                sh 'sh install_deps.sh'
            }
        }

        stage('Ejecucion de pruebas') {
            steps {
                sh 'sh run_tests.sh'
            }
        }

        stage('Construccion del proyecto') {
            steps {
                sh 'sh build.sh'
            }
        }

        stage('Simulacion de despliegue') {
            steps {
                sh 'sh deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completado con exito.'
        }
        failure {
            echo 'El pipeline fallo. Revisar la consola de Jenkins.'
        }
    }
}
