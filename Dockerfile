#FROM python:3
#WORKDIR ./app
#RUN pip install virtualenv
#RUN virtualenv ./env
#CMD source ./env/bin/activate
#RUN pip install flask
#RUN pip install flask_restful
#COPY . /app
#WORKDIR /app
#RUN pip install -r requirements.txt
#CMD [ "python", "./App_flask.py" ]
#EXPOSE 5000
FROM ubuntu:latest
MAINTAINER ramesh0476
RUN pip install flask
RUN pip install flask_restful
RUN pip install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["App_flask.py"]
