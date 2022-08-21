FROM openjdk:17-bullseye

RUN apt-get update \
    && \
    apt-get install -y \
    wget \
    && \
    mkdir /app \
    && \
    wget https://github.com/jeremynoesen/BoneBot/releases/download/1.5.7/BoneBot.jar -O /app/BoneBot.jar

WORKDIR /data

ENTRYPOINT ["java", "-jar", "/app/BoneBot.jar"]