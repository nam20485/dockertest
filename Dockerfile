FROM python:3.4
#FROM amazon/aws-eb-python:3.4.2-onbuild-3.5.1
ENV PYTHONUNBUFFERED 1
 
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
 
EXPOSE 8080
