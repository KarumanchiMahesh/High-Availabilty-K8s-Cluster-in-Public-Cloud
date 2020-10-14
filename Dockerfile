FROM tiangolo/uwsgi-nginx-flask:python3.6

WORKDIR /app
RUN rm /app/*

ADD ./prestart.sh /app
ADD ./hello.py /app

EXPOSE 80

RUN chmod 1777 /tmp

