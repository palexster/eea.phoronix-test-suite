FROM ubuntu:trusty
MAINTAINER Alex Palesandro <palexster@gmail.com>

RUN apt-get update \
    && apt-get -y install \
          build-essential wget unzip perl perl-base perl-modules libsdl-perl \
          libperl-dev libpcre3-dev mesa-utils php5-cli php5-gd php5-json zlib1g-dev libpng-dev sqlite \
    && cd /tmp \
    && wget http://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_7.2.0_all.deb \
    && dpkg -i phoronix-test-suite_7.2.0_all.deb \
    && rm -f phoronix-test-suite_7.2.0_all.deb
RUN apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev protobuf-compiler gcc-4.6 g++-4.6 gcc-4.6-multilib g++-4.6-multilib gfortran libjpeg62 libfreeimage-dev libatlas-base-dev git python-dev python-pip libgflags-dev libgoogle-glog-dev 
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && sudo apt-get update && sudo apt-get install -y r-base
ADD run.sh /run.sh
ADD user-config.xml /etc/phoronix-test-suite.xml
RUN chmod a+x /run.sh
RUN mkdir /tmp/test-results
ENTRYPOINT /run.sh
