FROM python:2.7
MAINTAINER ramesh0476 "ramhh4l@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
