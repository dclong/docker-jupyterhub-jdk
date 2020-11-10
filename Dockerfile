# NAME: dclong/jupyterhub-jdk
FROM dclong/jupyterhub
# GIT: https://github.com/dclong/docker-jupyterhub.git

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        openjdk-11-jdk maven \
    && apt-get autoremove \
    && apt-get clean 

COPY scripts /scripts
ENV M2_HOME=/usr/share/maven
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
