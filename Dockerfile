FROM jupyter/base-notebook:python-3.8
ADD . "/home/${NB_USER}/work"
WORKDIR "/home/${NB_USER}/work"
RUN mamba install -c conda-forge -c jmgeiger --quiet --yes \
    'networkx' \
    'ipycytoscape' \ 
    'openpyxl' \
    'elsapy' 
