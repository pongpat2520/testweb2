# Dockerfile
FROM jenkins/jenkins:lts

USER root

# ติดตั้ง Docker CLI และ Git
RUN apt-get update && apt-get install -y \
    docker.io \
    git

# ติดตั้ง Plugin ที่ต้องใช้ (git + pipeline)
RUN jenkins-plugin-cli --plugins \
    "workflow-aggregator:2.6" \
    "git:5.2.1" \
    "docker-workflow:1.28"

USER jenkins
