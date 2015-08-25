FROM jupyter/minimal

USER root
RUN chmod u+s /bin/chmod
RUN alias sui="chmod u+s"

RUN mkdir -p /home/jovyan/bin/
ADD https://raw.githubusercontent.com/travis-ci/gimme/master/gimme /home/jovyan/bin/gimme
RUN chown jovyan:jovyan /home/jovyan/bin -R

USER jovyan
RUN chmod a+x /home/jovyan/bin/gimme
ENV PATH /home/jovyan/bin:$PATH

RUN eval "$( gimme 1.4 )"

ADD . /home/jovyan

USER jovyan
