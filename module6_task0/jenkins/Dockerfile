# Use the latest LTS version of Jenkins as the base image
FROM jenkins/jenkins:lts-jdk11

# Install JDK version 11
USER root
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
USER jenkins

# Disable the Jenkins installation wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copy the plugins.txt file to the image
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install the plugins listed in plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
