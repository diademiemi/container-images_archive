FROM openjdk:17-bullseye

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
    wget https://github.com/jeremynoesen/BoneBot/releases/download/1.5.7/BoneBot.jar -O /app/BoneBot.jar

WORKDIR /data

ENTRYPOINT ["java", "-jar", "/app/BoneBot.jar"]