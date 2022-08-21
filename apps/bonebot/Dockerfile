FROM openjdk:17-bullseye

ARG VERSION

RUN apt-get update \
    && \
    apt-get install -y \
    wget \
    && \
    mkdir /app \
    && \
    wget "https://github.com/jeremynoesen/BoneBot/releases/download/${VERSION}/BoneBot.jar" -O /app/BoneBot.jar

WORKDIR /data

ENTRYPOINT ["java", "-jar", "/app/BoneBot.jar"]