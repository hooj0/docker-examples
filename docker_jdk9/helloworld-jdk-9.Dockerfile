# Hello world application with JDK 9 and Debian slim
FROM jdk-9-debian-slim
COPY target/helloworld.jar /opt/helloworld/helloworld.jar
# Set up env variables
CMD java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap \
  -cp /opt/helloworld/helloworld.jar com.hoojo.examples.App