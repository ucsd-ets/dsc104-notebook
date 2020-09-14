ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable
FROM $BASE_CONTAINER

USER root

###########################
# Requested for DSC104 FA20
COPY pip-requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/pip-requirements.txt

COPY /test.ipynb /home/jovyan
RUN chown -R $NB_UID /home/jovyan

USER $NB_UID
