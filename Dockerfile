FROM fedora

RUN yum install -y keepalived

ENTRYPOINT ["/usr/sbin/keepalived --dont-fork"]
