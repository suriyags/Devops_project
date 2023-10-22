pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven"
    }

    stages {
stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'http://localhost:3000/suriyags/20169004.git'

                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.war'
                }
            }
        }
        stage('Code Quality Check via SonarQube') {
   steps {
       //sh "/Users/suriyags/Downloads/sonarqube-9.2.4.50792/bin/macosx-universal-64/./sonar.sh start"
       script {
           scannerHome = tool 'sonarqube'}
           withSonarQubeEnv("sonarqube") {
           sh "${scannerHome}/bin/sonar-scanner \
           -Dsonar.projectKey=bookingapp:WebApp \
           -Dsonar.projectname=Webapp \
           -Dsonar.projectVersion=1.0 \
           -Dsonar.sourceEncoding=UTF-8 \
           -Dsonar.sources=src/main/java/source \
           -Dsonar.tests=src/test/java/webapptest \
           -Dsonar.language=java \
           -Dsonar.java.binaries=. \
           -Dsonar.java.libraries=src/main/java/source \
           -Dsonar.java.test.libraries=src/test/java/webapptest \
           -Dsonar.host.url=http://localhost:9000 \
           -Dsonar.login=admin \
           -Dsonar.password=SudhaMangai1903@ \
           -Dsonar.java.coveragePlugin=jacoco \
           -Dsonar.verbose=true \
           -Dsonar.surefire.reportsPath=target/surefire-reports \
           -Dsonar.jacoco.reportPath=target/jacoco.exec \
           -Dsonar.coverage.jacoco.xmlReportPaths=target/site/jacoco/jacoco.xml"
            
            
       }
       
           }
       }
       stage("uploading artifacts")
          {
              steps{
                  sh "rm -rf /Users/suriyags/Desktop/project/WebApp-1.war"
                  sh "/usr/local/bin/docker start nexus"
                  sleep 60
            nexusArtifactUploader artifacts: [[artifactId: 'WebApp', classifier: '', file: '/Users/suriyags/.jenkins/workspace/DevopsProfessionalCapstone/target/WebApp-1.war', type: 'war']], credentialsId: 'localNEXUS', groupId: 'bookingapp', nexusUrl: 'localhost:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'capstone', version: '1'
            }

        }
        stage("Pulling artifacts")
    {
       steps{
           sh "rm -rf WebApp-1.war"
           sh "wget http://localhost:8081/repository/capstone/bookingapp/WebApp/1/WebApp-1.war"
           sh "ls"
           sh "pwd"
           sh "cp WebApp-1.war /Users/suriyags/Desktop/project/"
}
   }
      stage("play ansible"){
       steps{
        ansiblePlaybook installation: 'Ansible', inventory: '/Users/suriyags/Desktop/project/invent.txt', playbook: '/Users/suriyags/Desktop/project/ansi.yaml'
        
           
       }
   }
   stage("Deploy container to K8s cluster")
{
steps{
/*sh "/usr/local/bin/docker stop nexus"
sh "/usr/local/bin/docker start minikube"
sleep 60 //seconds
sh "/usr/local/bin/minikube image load capstoneapp"*/
sh "docker stop nexus"
sh "minikube start"
sleep 10
sh "minikube image load capstoneapp"
//sh "eval ${minikube docker-env}"
git 'file:///Users/suriyags/Desktop/project'
sh "kubectl delete services webapp-service --ignore-not-found=true"
sh "kubectl delete deploy capstone --ignore-not-found=true"
sh "kubectl create -f deployment.yml"

}
}
    }
        }