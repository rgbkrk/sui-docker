FROM jupyter/minimal

USER root
RUN chmod u+s /bin/chmod
ADD ./sui /bin/sui
RUN chmod a+rx /bin/sui

USER jovyan
