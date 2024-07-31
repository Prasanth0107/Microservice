pipeline {
    agent any

    stages {
 currencyservice

 adservice

 emailservice
 main
 main
        stage('Build & Tag Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
 currencyservice
                        sh "docker build -t prasanth0107/currencyservice:latest ."

 adservice
                        sh "docker build -t prasanth0107/adservice:latest ."

                        sh "docker build -t prasanth0107/emailservice:latest ."
 main
 main
                    }
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
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
                }
            }
        }
    }
}
