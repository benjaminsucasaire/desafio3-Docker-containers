FROM centos:7
ENV ENV stg
ENV VIRTUALIZATION docker
ENV TYPE container
RUN yum -y update
RUN yum -y install httpd httpd-tools
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum -y install yum-utils
RUN yum-config-manager --enable remi-php74
RUN yum -y install php php-cli
RUN echo "<?php phpinfo(); ?>" >> /var/www/html/index.php
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]