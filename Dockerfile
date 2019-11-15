# Compose tp application image
FROM ubuntu:bionic

ADD ./app /cmpapp
WORKDIR /cmpapp
RUN apt-get update 
RUN apt install  fortune-mod -yqq
RUN chmod +x app.sh 
CMD ["./app.sh"]
