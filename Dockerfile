FROM jupyter/base-notebook
ADD . "/home/${NB_USER}/work"
WORKDIR "/home/${NB_USER}/work"
RUN mamba install -c conda-forge --quiet --yes \
    'networkx' \
    'ipycytoscape' \ 
    'openpyxl'
