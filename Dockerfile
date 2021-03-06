FROM centos:7

RUN yum install -y sudo wget openssh-clients openssh-server vim mariadb mariadb-server java-1.8.0-openjdk* net-tools krb5-server krb5-libs krb5-workstation

RUN /bin/sed -i 's,#   StrictHostKeyChecking ask,StrictHostKeyChecking no,g' /etc/ssh/ssh_config

RUN ssh-keygen -f "/root/.ssh/id_rsa" -N ""

RUN wget -O /etc/yum.repos.d/bigtop.repo https://downloads.apache.org/bigtop/bigtop-3.1.0/repos/centos-7/bigtop.repo \
    && yum -y install ambari-server ambari-agent \
    && rm -f /etc/yum.repos.d/bigtop.repo

EXPOSE 1-65535
