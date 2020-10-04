FROM gitpod/workspace-full:latest
USER root
RUN sudo apt-get update
RUN sudo apt-get install bc git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib maven tmux screen w3m ncftp
RUN wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh && chmod +x android_build_env.sh && ./android_build_env.sh
RUN sudo apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER root
