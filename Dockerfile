 FROM amazon/aws-eb-python:3.4.2-onbuild-3.5.1
 ENV PYTHONUNBUFFERED 1
 EXPOSE 8000
 
 RUN mkdir /code
 WORKDIR /code
 ADD requirements.txt /code/
 RUN pip install -r requirements.txt
 ADD . /code/
