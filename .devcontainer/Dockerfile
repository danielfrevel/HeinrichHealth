FROM ubuntu:20.04 as base 
USER root

# Ensure apt is in non-interactive to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update; 
RUN apt-get install -y libc6 libgcc1 libgssapi-krb5-2 libssl1.1 libstdc++6 zlib1g sudo wget git

RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

RUN apt-get update; 
RUN apt-get install -y apt-transport-https 
RUN apt-get install -y iputils-ping
RUN apt-get install -y dotnet-sdk-6.0
RUN apt install openjdk-8-jdk -y

ENV ASPNETCORE_URLS=http://*:5000

RUN mkdir -p /usr/share/man/man1 \
    && mkdir -p /usr/share/man/man7

# Apt
RUN apt update && apt install -y curl wget git xz-utils lib32stdc++6 unzip openjdk-8-jdk-headless

# Android SDK
RUN wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip 
RUN mkdir android-sdk && unzip /sdk-tools-linux-4333796.zip -d android-sdk
RUN rm /sdk-tools-linux-4333796.zip
ENV ANDROID_HOME="/android-sdk"
ENV PATH="/android-sdk/tools/bin:/android-sdk/build-tools:/android-sdk/platform-tools:${PATH}"

# SDK manager
RUN yes | sdkmanager --licenses

RUN sdkmanager "platforms;android-28" "platform-tools" "build-tools;28.0.3"

# Flutter
RUN wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.5.4-hotfix.2-stable.tar.xz
RUN tar xf flutter_linux_v1.5.4-hotfix.2-stable.tar.xz 
RUN rm flutter_linux_v1.5.4-hotfix.2-stable.tar.xz
ENV PATH="/flutter/bin:${PATH}"

RUN flutter config --no-analytics

# Set a useful default shell
ENV SHELL /bin/bash

