FROM jupyter/minimal

USER root
RUN chmod u+s /bin/chmod
RUN alias sui="chmod u+s"

USER jovyan
RUN mkdir -p /home/jovyan/bin

ADD https://raw.githubusercontent.com/travis-ci/gimme/master/gimme /home/jovyan/bin/gimme
ENV PATH /home/jovyan/bin:$PATH

ADD . /home/jovyan

USER jovyan
