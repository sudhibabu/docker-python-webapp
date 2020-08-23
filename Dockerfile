FROM ubuntu

RUN apt-get update
RUN apt-get install python -y
RUN apt-get install python3-pip -y 
RUN pip3 install flask
RUN pip3 install flask-mysql
RUN apt-get install vim -y

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0