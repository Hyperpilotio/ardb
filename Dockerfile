# Pull base image.
FROM ubuntu:17.04

# Install.
RUN apt-get update
RUN apt-get -y upgrade 
RUN mkdir /ardb_data

# Add files.
COPY ardb /root/ardb

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]


