FROM python:slim-buster
RUN apt-get update -y

COPY ./requirements.apt-get.txt /requirements.apt-get.txt
RUN sed 's/#.*//' /requirements.apt-get.txt | xargs apt-get install -y

COPY ./requirements.pip.txt /requirements.pip.txt
RUN pip3 install -r /requirements.pip.txt

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