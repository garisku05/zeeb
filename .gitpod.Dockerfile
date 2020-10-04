FROM gitpod/workspace-full
USER root
RUN sudo apt-get update
RUN wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh && chmod +x android_build_env.sh && ./android_build_env.sh
RUN sudo apt install -y openjdk-8-jdk && \
    sudo apt-get clean &&  \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo rm -rf /var/cache/apt/* && \
USER root
