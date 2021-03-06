FROM amazonlinux:1

RUN yum update -y

RUN yum remove php* -y
RUN yum remove httpd* -y

RUN yum install php70 -y
RUN yum install php70-* -y
RUN yum install httpd24 -y

WORKDIR /var/www/html/Test
COPY . /var/www/html/Test

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
