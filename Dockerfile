FROM registry.access.redhat.com/ubi8-minimal:8.4@sha256:48a4bec3d1dec90b5dd5420bf7c41a5756b7fbe8b862546134fbe2caa607679f

COPY backup.sh /usr/local/bin/backup.sh

RUN microdnf update -y && rm -rf /var/cache/yum
RUN microdnf install findutils -y && microdnf clean all

CMD ["/usr/local/bin/backup.sh"]
