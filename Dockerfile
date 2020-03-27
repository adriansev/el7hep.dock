FROM centos:centos7

RUN mkdir -p /cvmfs /etc/cvmfs /var/lib/cvmfs && yum -y update && yum -y install bash gawk bash-completion util-linux coreutils sudo curl fuse fuse-libs fuse3 fuse3-libs bindfs http://linuxsoft.cern.ch/wlcg/centos7/x86_64/HEP_OSlibs-7.2.9-1.el7.cern.x86_64.rpm  && yum clean all && rm -rf /var/cache/yum

SHELL ["/usr/bin/bash", "-c"]
CMD ["/usr/bin/bash"]

LABEL maintainer="Adrian.Sevcenco@spacescience.ro"

