FROM ubuntu:15.04
RUN apt-get update && apt-get install vim -y
RUN chmod u+s /bin/chmod
