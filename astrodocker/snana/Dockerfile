FROM python:slim-buster
RUN apt-get update -y
RUN apt-get install -y libcfitsio-dev
RUN apt-get install -y libgsl-dev
RUN apt-get install -y libncurses-dev
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y gfortran
RUN apt-get install -y wget

ARG SNANA_VERSION
ARG SNANA_LIB_SDIR

ENV SOFT_DIR=/usr
ENV CFITSIO_DIR=$SOFT_DIR
ENV GSL_DIR=$SOFT_DIR
ENV SNANA_DIR=$SOFT_DIR/SNANA/SNANA-$SNANA_VERSION
ENV PATH=$SNANA_DIR/bin:$SNANA_DIR/util:$PATH

RUN mkdir /usr/SNANA
RUN mkdir /usr/SNANA/SNANA-$SNANA_VERSION
RUN wget -qO- https://github.com/RickKessler/SNANA/archive/refs/tags/v${SNANA_VERSION}.tar.gz | tar -xvz -C $SOFT_DIR/SNANA
COPY ./Makefile $SNANA_DIR/src/Makefile
WORKDIR $SNANA_DIR/src/
RUN make


