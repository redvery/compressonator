FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

ENV PATH="$PATH:/usr:/usr/pkglibs"
WORKDIR /data

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget libgl1-mesa-glx libglib2.0-0 -y
RUN wget https://github.com/GPUOpen-Tools/compressonator/releases/download/V4.5.52/compressonatorcli_4.5.52_amd64.deb
RUN dpkg -i compressonatorcli_4.5.52_amd64.deb
RUN rm -rf compressonatorcli_4.5.52_amd64.deb
RUN apt-get -fy install
RUN apt-get clean

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
