node('master') {


    currentBuild.result = "SUCCESS"

    try {

       stage('Checkout'){

          checkout scm
       }

       
       stage('Build Docker'){
            
            sh 'sh ./dockerPushToRepo.sh'
       }

       stage('Cleanup'){

         echo 'prune and cleanup'
         sh 'npm prune'
         sh 'rm node_modules -rf'

         mail body: 'project build successful',
                     from: 'bjk543@gmail.com',
                     replyTo: 'bjk543@gmail.com',
                     subject: 'project build successful',
                     to: 'bjk543@gmail.com'
       }



    }
    catch (err) {

        currentBuild.result = "FAILURE"

            mail body: "project build error is here: ${env.BUILD_URL}" ,
            from: 'bjk543@gmail.com',
            replyTo: 'bjk543@gmail.com',
            subject: 'project build failed',
            to: 'bjk543@gmail.com'

        throw err
    }

}
