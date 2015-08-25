FROM jupyter/minimal

USER root
RUN chmod u+s /bin/chmod
RUN alias sui="chmod u+s"

ADD . /home/main

USER jovyan
