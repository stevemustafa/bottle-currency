FROM amazonlinux:2

COPY . /src

#ENV DEBIAN_FRONTEND noninteractive

RUN cd /src && sudo yum update -y && pip3 install -U pip && pip3 install -r requirements.txt

EXPOSE 8000

CMD cd /src && python wsgi.py