FROM httpd:2.4
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/mdn/beginner-html-site-styled.git /tmp/site
RUN rm -rf /usr/local/apache2/htdocs/* \ && git clone https://github.com/mdn/beginner-html-site-styled.git /usr/local/apache2/htdocs/
