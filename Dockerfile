FROM debian:jessie-slim

WORKDIR /opt

RUN apt-get update -y
RUN apt-get install wget gcc make -y
RUN apt-get install libdb-dev libncurses5-dev libgmp-dev autoconf -y

RUN wget https://downloads.sourceforge.net/project/gnucobol/gnucobol/3.1/gnucobol-3.1.2.tar.gz \
         https://downloads.sourceforge.net/project/gnucobol/gnucobol/3.1/gnucobol-3.1.2.tar.gz.sig \
         https://ftp.gnu.org/gnu/gnu-keyring.gpg
RUN gpg --verify --keyring ./gnu-keyring.gpg gnucobol-3.1.2.tar.gz.sig
RUN tar zxf gnucobol-3.1.2.tar.gz

WORKDIR gnucobol-3.1.2
RUN ./configure
RUN make
RUN make install
#RUN make check
RUN ldconfig

WORKDIR ~/
COPY test.cob .
RUN cobc --version
RUN cobc -xj test.cob
