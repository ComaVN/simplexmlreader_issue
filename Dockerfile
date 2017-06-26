FROM php
MAINTAINER Roel Harbers <roel.harbers@on2it.net>

COPY . .
RUN bin/composer.phar install
CMD php vendor/suramon/simple-xml-reader/examples/simple-example.php
