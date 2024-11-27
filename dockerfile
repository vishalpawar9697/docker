FROM centos:latest
RUN yum update
ENV READHAT_FRONTEND=noninteractive
RUN yum install httpd -y
RUN echo "<h1> Hello Docker </h1>" > /var/www/html/index.html
RUN yum clean
EXPOSE 80
CMD ["httpdctl", "-D", "FOREGROUND"]
