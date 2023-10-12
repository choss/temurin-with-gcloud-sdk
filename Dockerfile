FROM eclipse-temurin:11-jre-jammy
RUN apt install -y xxd bzip2
RUN cd /opt && wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-448.0.0-linux-x86_64.tar.gz && tar -xzf google-cloud-cli-448.0.0-linux-x86_64.tar.gz && rm google-cloud-cli-448.0.0-linux-x86_64.tar.gz
ENTRYPOINT ["/__cacert_entrypoint.sh"]
