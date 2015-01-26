FROM debian 

RUN apt-get update
RUN apt-get install -y wget build-essential libssl-dev

RUN wget http://www.keepalived.org/software/keepalived-1.2.15.tar.gz
RUN tar -xzvf keepalived-1.2.15.tar.gz
RUN rm keepalived-1.2.15.tar.gz
RUN cd keepalived-1.2.15

RUN ./configure
RUN make
RUN make install

ENTRYPOINT ["/usr/local/sbin/keepalived"]
CMD ["--dont-fork --log-console"]
