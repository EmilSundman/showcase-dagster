FROM python:3.9-slim

ENV DAGSTER_HOME=/opt/dagster/dagster_home/

RUN mkdir -p $DAGSTER_HOME

COPY requirements.txt $DAGSTER_HOME
WORKDIR $DAGSTER_HOME
RUN pip install -r ${DAGSTER_HOME}/requirements.txt

COPY dagster.yaml workspace.yaml $DAGSTER_HOME
WORKDIR $DAGSTER_HOME