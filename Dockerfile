FROM centos:centos7

RUN mkdir -p /cvmfs /etc/cvmfs /var/lib/cvmfs && \
yum -y update && \
yum -y install https://linuxsoft.cern.ch/wlcg/centos7/x86_64/wlcg-repo-1.0.0-1.el7.noarch.rpm && \
yum install -y HEP_OSlibs bash gawk bash-completion util-linux coreutils sudo curl fuse fuse-libs fuse3 fuse3-libs bindfs && \
yum clean all && rm -rf /var/cache/yum

SHELL ["/usr/bin/bash", "-c"]
CMD ["/usr/bin/bash"]

LABEL maintainer="Adrian.Sevcenco@spacescience.ro"

