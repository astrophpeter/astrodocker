FROM python:slim-buster
RUN apt-get update -y
RUN apt-get install -y libcfitsio-dev
RUN apt-get install -y libgsl-dev
RUN apt-get install -y libncurses-dev
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y gfortran

ENV CFITSIO_DIR=usr/share/doc/libcfitsio/cfitsio
ENV GSL_DIR=usr
ENV SNANA_DIR=/usr/share/doc/SNANA
ENV PATH $SNANA_DIR/bin:$SNANA_DIR/util:$PATH

WORKDIR /home/
RUN git clone https://github.com/RickKessler/SNANA /usr/share/doc/SNANA/

RUN cd /usr/share/doc/SNANA/src && make