FROM eclipse-temurin:11-jre-jammy
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends xxd bzip2 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN cd /opt && wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-448.0.0-linux-x86_64.tar.gz && tar -xzf google-cloud-cli-448.0.0-linux-x86_64.tar.gz && rm google-cloud-cli-448.0.0-linux-x86_64.tar.gz
ENV PATH=/opt/google-cloud-sdk/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENTRYPOINT ["/__cacert_entrypoint.sh"]
