FROM ubuntu
FROM httpd:2.4
RUN apt update
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN cp -r /tmp/site/* /usr/local/apache2/htdocs/
RUN git clone https://github.com/mdn/beginner-html-site-styled.git /usr/local/apache2/htdocs/
RUN apt install apache2 -y
ADD . /var/www.html
ENTRYPOINT apachectl -D FOREGROUND
