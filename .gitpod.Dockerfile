FROM gitpod/workspace-full
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh \ && sdk install java 8.0.265.hs-adpt"
USER root
RUN sudo apt-get update
RUN wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh && chmod +x android_build_env.sh && ./android_build_env.sh
RUN sudo apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER root
