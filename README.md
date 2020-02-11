# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.6.0-alpine-3.11.3
2020/02/11 21:07:06 [INFO] ▶ Start clair-scanner
2020/02/11 21:07:11 [INFO] ▶ Server listening on port 9279
2020/02/11 21:07:11 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 21:07:11 [INFO] ▶ Analyzing 8678a7f67c60ee2d8812757c2c286219d33641538b83d86d39c4467cdafb9886
2020/02/11 21:07:11 [INFO] ▶ Analyzing f7a0d9740b8ab58dd78517914eb139a710d7666f6db5f0e24655a8784becf1d3
2020/02/11 21:07:11 [INFO] ▶ Analyzing 415a3c77ba4443543b3654a649d4f715e9cd79385ffe0a61f61059d650067972
2020/02/11 21:07:11 [INFO] ▶ Image [secureimages/logstash-oss:7.6.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/logstash-oss:7.6.0-alpine-3.11.3
2020-02-11T19:07:15.346Z        INFO    Need to update DB
2020-02-11T19:07:15.346Z        INFO    Downloading DB...
2020-02-11T19:09:09.640Z        INFO    Reopening DB...
2020-02-11T19:09:26.252Z        INFO    Detecting Alpine vulnerabilities...
2020-02-11T19:09:26.255Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.6.0-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.6.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.6.0
2020/02/11 21:09:33 [INFO] ▶ Start clair-scanner
2020/02/11 21:09:47 [INFO] ▶ Server listening on port 9279
2020/02/11 21:09:47 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/11 21:09:47 [INFO] ▶ Analyzing bbe4b3dd37707e8c78ecbdd3af4ad653a2efa05df128a18d59da2d7d17389005
2020/02/11 21:09:47 [INFO] ▶ Analyzing 3f55798afac73987a21d5bccea6c9a7896085a6bf82fafd66c5ae43890a78a69
2020/02/11 21:09:47 [INFO] ▶ Analyzing d18276acf085f537adda05d6e45d28797c65f80d61515a7130ca25034a497fa1
2020/02/11 21:09:47 [INFO] ▶ Analyzing f08d66bdb165df556b9935461fc4e9869ac93dd39ad1400d85308bb152df7d6d
2020/02/11 21:09:47 [INFO] ▶ Analyzing 4c26df52af8df33f97bf033ec403dad827d6c18e29fcb05ed81d2e8220d53b90
2020/02/11 21:09:47 [INFO] ▶ Analyzing 4142510d644a382b67374ba3c670887e4cf082da5a0d0381228d5820a3b08612
2020/02/11 21:09:48 [INFO] ▶ Analyzing 1d938828ce25b908d6484b3955b74e8e39beb3ec7afd0212908ee5fd0e375e81
2020/02/11 21:09:48 [INFO] ▶ Analyzing ddf885794f6071f6df38a0db66017c8f9d26b8a531a8fea4899a62f96c445c3a
2020/02/11 21:09:48 [INFO] ▶ Analyzing 06977263736fa258aaf4bce7d17ce091264db34e303030c8379c56350aff93f1
2020/02/11 21:09:48 [INFO] ▶ Analyzing 61f3c281ce82393c338905bfb7465b81eb2087eebb364c5618396c44f7f1cccc
2020/02/11 21:09:48 [INFO] ▶ Analyzing e046c2b2708c174323fa87ab5aaccb4874ddbba92519f6be57dbfbe783d9da44
2020/02/11 21:09:48 [INFO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/logstash/logstash-oss:7.6.0
2020-02-11T19:09:50.960Z        INFO    Need to update DB
2020-02-11T19:09:50.960Z        INFO    Downloading DB...
2020-02-11T19:09:54.477Z        INFO    Reopening DB...
2020-02-11T19:10:09.460Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-02-11T19:10:09.467Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.6.0 (centos 7.7.1908)
===============================================================
Total: 664 (UNKNOWN: 0, LOW: 62, MEDIUM: 476, HIGH: 120, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```
