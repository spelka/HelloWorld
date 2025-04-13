pipelineJob('hello-world-web-app') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/spelka/HelloWorld.git')
                    }
                    branches('*/main')
                }
                scriptPath('Jenkinsfile')
            }
        }
    }
    triggers {
        githubPush() // enables GitHub webhook trigger
    }
}
