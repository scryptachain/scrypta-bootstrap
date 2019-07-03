FROM nginx:stable

ADD default.conf /etc/nginx/conf.d/default.conf
ADD www/css/ /opt/www/file-browser/css/
ADD www/fonts/ /opt/www/file-browser/fonts/
ADD www/image/ /opt/www/file-browser/image/
ADD www/js/ /opt/www/file-browser/js/
ADD www/index.html /opt/www/file-browser/

VOLUME /opt/www/files/

EXPOSE 80
