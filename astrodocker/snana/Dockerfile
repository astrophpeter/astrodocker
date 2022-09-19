FROM python:slim-buster
RUN apt-get update -y
RUN apt-get install -y libcfitsio-dev
RUN apt-get install -y libgsl-dev
RUN apt-get install -y libncurses-dev
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y gfortran

ENV CFITSIO_DIR=/usr
ENV GSL_DIR=/usr
ENV SNANA_DIR=/home/SNANA
ENV PATH $SNANA_DIR/bin:$SNANA_DIR/util:$PATH

WORKDIR /home/
RUN git clone https://github.com/RickKessler/SNANA /home/SNANA/
COPY ./Makefile $SNANA_DIR/src/Makefile
RUN cd $SNANA_DIR/src/ && make
