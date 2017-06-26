FROM php:7.1.6
MAINTAINER Roel Harbers <roel.harbers@on2it.net>

COPY . .
RUN bin/composer.phar install
CMD php vendor/suramon/simple-xml-reader/examples/simple-example.php
