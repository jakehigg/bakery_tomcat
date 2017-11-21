pipeline {
    agent any 

    stages {
        stage('Git Packer Template') { 
            steps { 
                sh 'rm -rvf bakery_tomcat'
                sh 'git clone https://github.com/jakehigg/bakery_tomcat.git' 
            }
        }
        stage('Bake') {
            steps {
                withCredentials([string(credentialsId: 'aws_access_key', variable: 'aws_access_key')]) {
                withCredentials([string(credentialsId: 'aws_secret_key', variable: 'aws_secret_key')]) {
                withCredentials([string(credentialsId: 'aws_account_id', variable: 'aws_account_id')]) {
                sh '''
                packer build -var "aws_access_key=$aws_access_key" -var "aws_secret_key=$aws_secret_key" -var "aws_account_id=$aws_account_id" -var "source_ami=ami-f058d08a" -var "vpc_id=vpc-04bea57d" -var "subnet_id=subnet-86bb84aa" bakery_tomcat/packer/bakery.json
                '''
                }}}
               
                }
            }
        }
    }

