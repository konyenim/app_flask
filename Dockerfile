FROM python:2.7-alpine
MAINTAINER isnanto <isnantointerista@gmail.com>

ENV INSTALL_PATH /web_app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .


CMD gunicorn -b 0.0.0.0:8000 --acces-logfile - "flask01.app:create_app()"