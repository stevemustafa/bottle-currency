FROM amazonlinux:2

COPY . /src

#ENV DEBIAN_FRONTEND noninteractive

RUN cd /src 

EXPOSE 8000

CMD pip install -r requirements.txt

CMD cd /src && python wsgi.py