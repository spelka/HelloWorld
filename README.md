your-project/
├── ansible/
│   └── playbooks/
│       └── jenkins.yml                # Jenkins setup via Ansible
├── jenkins/
│   └── jobs/
│       └── hello-world-job.groovy    # Jenkins Job DSL config (job definition)
│   └── seed-job.groovy               # (Optional) seed job to load DSLs
├── terraform/
│   └── github_webhook.tf             # GitHub webhook IaC
├── app/                              # Your Hello World app
│   └── Dockerfile
│   └── index.html (or app.js, etc.)
├── Jenkinsfile                       # CI/CD pipeline logic
└── README.md
