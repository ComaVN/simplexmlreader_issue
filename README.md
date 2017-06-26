# quick reproduction project for issue with SimpleXmlReader in php 7.1.6

Build using different php versions:
```
$ docker build --tag simplexmlreader:7.0.19 -f php7.0.19.Dockerfile .
$ docker build --tag simplexmlreader:7.0.20 -f php7.0.20.Dockerfile .
$ docker build --tag simplexmlreader:7.1.5 -f php7.1.5.Dockerfile .
$ docker build --tag simplexmlreader:7.1.6 -f php7.1.6.Dockerfile .
```

Running using php 7.0.19 or php 7.1.5 works fine:
```
$ docker run --rm simplexmlreader:7.0.19
A cat has a tail? yes!
A dog has a tail? yes!
A kakariki has a tail? no!

$ docker run --rm simplexmlreader:7.1.5
A cat has a tail? yes!
A dog has a tail? yes!
A kakariki has a tail? no!
```

Running using php 7.0.20 or php 7.1.6 gives a warning:
```
$ docker run --rm simplexmlreader:7.0.20

Warning: Declaration of SimpleXmlReader\ExceptionThrowingXMLReader::expand(DOMNode $baseNode = NULL) should be compatible with XMLReader::expand($basenode = NULL) in /vendor/suramon/simple-xml-reader/src/SimpleXmlReader/ExceptionThrowingXMLReader.php on line 61
A cat has a tail? yes!
A dog has a tail? yes!
A kakariki has a tail? no!

$ docker run --rm simplexmlreader:7.1.6

Warning: Declaration of SimpleXmlReader\ExceptionThrowingXMLReader::expand(?DOMNode $baseNode = NULL) should be compatible with XMLReader::expand($basenode = NULL) in /vendor/suramon/simple-xml-reader/src/SimpleXmlReader/ExceptionThrowingXMLReader.php on line 61
A cat has a tail? yes!
A dog has a tail? yes!
A kakariki has a tail? no!
```
