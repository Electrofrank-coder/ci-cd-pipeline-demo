pipeline {
    agent {
        docker {
            image 'python:3.11-slim'
        }
    }

    stages {
        stage('Clonacion del repositorio') {
            steps {
                echo 'Codigo clonado correctamente desde GitHub'
                sh 'ls -la'
            }
        }

        stage('Instalacion de dependencias') {
            steps {
                sh 'pip install --upgrade pip'
                sh 'pip install -r requirements.txt'
                echo 'Dependencias instaladas correctamente'
            }
        }

        stage('Ejecucion de pruebas') {
            steps {
                sh 'pytest tests/ -v'
                echo 'Todas las pruebas pasaron exitosamente'
            }
        }

        stage('Construccion del proyecto') {
            steps {
                sh 'mkdir -p dist'
                sh 'tar -czf dist/app-build.tar.gz app.py requirements.txt tests/'
                sh 'ls -la dist/'
                echo 'Proyecto construido y empaquetado correctamente'
            }
        }

        stage('Simulacion de despliegue') {
            steps {
                echo '========================================='
                echo 'Despliegue realizado correctamente en ambiente de pruebas'
                echo 'Version: build-' + env.BUILD_NUMBER
                sh 'date'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completado con EXITO'
        }
        failure {
            echo 'Pipeline FALLO - revisar logs'
        }
    }
}
