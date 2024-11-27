# Use the official CentOS base image
FROM centos:latest

# Set the maintainer label
LABEL maintainer="your_email@example.com"

# Update the system and install any necessary packages
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y clean all

# Set the default command
CMD ["/bin/bash"]
