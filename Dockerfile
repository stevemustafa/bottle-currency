FROM amazonlinux:2

COPY . /src

#ENV DEBIAN_FRONTEND noninteractive

RUN cd /src 

EXPOSE 8000

CMD cd /src && python wsgi.py