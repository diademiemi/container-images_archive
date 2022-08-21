FROM openjdk:17-bullseye

ARG VERSION

RUN apt-get update \
    && \
    apt-get install -y \
    wget \
    python3-pip \
    ffmpeg \
    imagemagick \
    zlib1g-dev \
    libjpeg-dev \
    && \
    pip3 install --upgrade pip \
    && \
    pip3 install \
    Pillow \
    && \
    mkdir /app \
    && \
    wget "https://github.com/jeremynoesen/BoneBot/releases/download/${VERSION}/BoneBot.jar" -O /app/BoneBot.jar

WORKDIR /data

ENTRYPOINT ["java", "-jar", "/app/BoneBot.jar"]