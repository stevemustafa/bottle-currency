FROM amazonlinux:2

COPY . /src

#ENV DEBIAN_FRONTEND noninteractive

RUN cd /src && pip install -U pip && pip install -r requirements.txt

EXPOSE 8000

CMD cd /src && python wsgi.py