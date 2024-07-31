 cartservice

 frontend

 shippingservice
pipeline { 
    agent any

    stages {

 main
 main
pipeline {
    agent any

    stages {
 cartservice
        stage('Build & Tag Docker Image') {
            steps {
                script {
                    dir('src') {

                    withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
                        sh "docker build -t prasanth0107/cartservice:latest ."
                    }
                        }

 frontend

 paymentservice

 productcatalogservice

 loadgenerator

 currencyservice

 adservice

 emailservice
 main
 main
 main
 main
 main
 main
 main
        stage('Build & Tag Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
 frontend
                        sh "docker build -t prasanth0107/frontend:latest ."

 shippingservice
                        sh "docker build -t prasanth0107/shippingservice:latest ."

 paymentservice
                        sh "docker build -t prasanth0107/paymentservice:latest ."

 productcatalogservice
                        sh "docker build -t prasanth0107/productcatalogservice:latest ."

 loadgenerator
                        sh "docker build -t prasanth0107/loadgenerator:latest ."

 currencyservice
                        sh "docker build -t prasanth0107/currencyservice:latest ."

 adservice
                        sh "docker build -t prasanth0107/adservice:latest ."

                        sh "docker build -t prasanth0107/emailservice:latest ."
 main
 main
 main
 main
 main
 main
 main
                    }
 main
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
 cartservice
                        sh "docker push prasanth0107/cartservice:latest "
                    }

 frontend
                        sh "docker push adijaiswal/frontend:latest"
                    }

 shippingservice
                        sh "docker push prasanth0107/shippingservice:latest "
                    }

 paymentservice
                        sh "docker push prasanth0107/paymentservice:latest "
                    }

 productcatalogservice
                        sh "docker push prasanth0107/productcatalogservice:latest "
                    }

 loadgenerator
                        sh "docker push prasanth0107/loadgenerator:latest"
                    }

 currencyservice
                        sh "docker push prasanth0107/currencyservice:latest "
                    }

 adservice
                        sh "docker push prasanth0107/adservice:latest "
                    }

                        sh "docker push prasanth0107/emailservice:latest "
                    }

        stage('Deploy To Kubernetes') {
            steps {
                withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://9F39F577334FF23706994135261985F2.gr7.ap-south-1.eks.amazonaws.com']]) {
                    sh "kubectl apply -f deployment-service.yml"
                    
                }
            }
        }
        
        stage('verify Deployment') {
            steps {
                withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://9F39F577334FF23706994135261985F2.gr7.ap-south-1.eks.amazonaws.com']]) {
                    sh "kubectl get svc -n webapps"
 main
 main
 main
 main
 main
 main
 main
 main
 main
                }
            }
        }
    }
}
