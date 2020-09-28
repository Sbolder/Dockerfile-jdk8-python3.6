FROM python:3.6-slim

RUN apt-get update
RUN apt-get install -y apt-utils build-essential
RUN apt-get install -y gcc


ENV JAVA_FOLDER java-se-8u41-ri
ENV JVM_ROOT /usr/lib/jvm



	
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*    && \
    apt-get clean                                                               && \
    apt-get autoremove                                                          && \
    echo Downloading https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz && \
    wget -q \
        https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz  && \
    tar -xvf openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz                                && \
    rm openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz                                       && \
    mkdir -p /usr/lib/jvm                                                       && \
    mv ./$JAVA_FOLDER $JVM_ROOT                                                 && \
    update-alternatives --install /usr/bin/java java $JVM_ROOT/$JAVA_FOLDER/bin/java 1        && \
    update-alternatives --install /usr/bin/javac javac $JVM_ROOT/$JAVA_FOLDER/bin/javac 1     && \
    java -version
