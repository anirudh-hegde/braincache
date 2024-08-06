FROM debian:12

RUN apt-get update && apt-get install -y curl nginx zip

RUN echo "daemon off;" >>/etc/nginx/nginx.conf

RUN curl -o /var/www/html/master.zip -L https://codeload.github.com/ellisonleao/clumsy-bird/zip/master

RUN cd /var/www/html/ && unzip master.zip && mv clumsy-bird-master/* . && rm -rf clumsy-bird-master master.zip

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]