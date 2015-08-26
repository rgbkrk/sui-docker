FROM jupyter/minimal

USER root
RUN chmod u+s /bin/chmod
ADD ./sui /bin/sui
ADD ./sushi /bin/sushi

RUN chmod a+rx /bin/sui /bin/sushi

USER jovyan
