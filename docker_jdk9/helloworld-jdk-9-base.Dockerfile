# Hello world application with custom Java runtime with just the base module and Debian slim
FROM debian:stable-slim
COPY target/openjdk-9-base_linux-x64 /opt/jdk-9-base
COPY target/helloworld.jar /opt/helloworld/helloworld.jar
# Set up env variables
ENV JAVA_HOME=/opt/jdk-9-base
ENV PATH=$PATH:$JAVA_HOME/bin
CMD java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap \
  -cp /opt/helloworld/helloworld.jar com.hoojo.examples.App
