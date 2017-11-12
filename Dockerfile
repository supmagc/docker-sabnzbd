FROM linuxserver/sabnzbd
MAINTAINER supmagc

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
    curl \
    p7zip \
    python \
    unrar \
    wget \
    git \
    unzip \
    tar \
    ffmpeg && \
 git clone https://github.com/clinton-hall/nzbToMedia.git /scripts && \

# cleanup
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*

# add local files
COPY root/ /

# ports and volumes
VOLUME /nzbtomedia
