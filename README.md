# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.5.1-alpine-3.11.3
2020/01/21 11:02:23 [INFO] ▶ Start clair-scanner
2020/01/21 11:02:29 [INFO] ▶ Server listening on port 9279
2020/01/21 11:02:29 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/21 11:02:29 [INFO] ▶ Analyzing 66b6c5bb59e1802c704ad3e86b12eb9bf4865a4016e085bf3842a13a75f1594d
2020/01/21 11:02:30 [INFO] ▶ Analyzing da39fbed45d7ed5df40c1442b7a7caa14112b4c8e16de8e6fbb77de964f50747
2020/01/21 11:02:30 [INFO] ▶ Analyzing aee44ba9467580c5b5770f861d801b1f20ce59ed93403c1b3f6126360a3a1af8
2020/01/21 11:02:30 [INFO] ▶ Image [secureimages/logstash-oss:7.5.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/logstash-oss:7.5.1-alpine-3.11.3
2020-01-21T09:02:33.686Z        INFO    Need to update DB
2020-01-21T09:02:33.686Z        INFO    Downloading DB...
2020-01-21T09:02:37.619Z        INFO    Reopening DB...
2020-01-21T09:02:43.938Z        INFO    Detecting Alpine vulnerabilities...
2020-01-21T09:02:43.940Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.5.1-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 24 (UNKNOWN: 3, LOW: 0, MEDIUM: 16, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.5.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.5.1
2020/01/21 11:02:52 [INFO] ▶ Start clair-scanner
2020/01/21 11:03:05 [INFO] ▶ Server listening on port 9279
2020/01/21 11:03:05 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/21 11:03:07 [INFO] ▶ Analyzing 87f7384b8bba1ab2fed4fcb9f81583baa6bc6ba57cc94425773ca1d769abef36
2020/01/21 11:03:08 [INFO] ▶ Analyzing 7c8f517bfc1158f780f7c2f7193b38b4bec903209e8aec4059dcd5a9f0be92b5
2020/01/21 11:03:08 [INFO] ▶ Analyzing ff50fa9a1a8e314007582d41418c5b7e223157993675acc4bfafee94fe6d7ded
2020/01/21 11:03:09 [INFO] ▶ Analyzing acf4485fda283bbf4f9448befa9ece6b8c01e6e382f27b1d6267286f3486a85f
2020/01/21 11:03:09 [INFO] ▶ Analyzing ff9fc6329818f4b02a73e159040cc38469cdd691505bdda8c36556a633cba9b1
2020/01/21 11:03:09 [INFO] ▶ Analyzing 72107bebe21a0236aba81797d8cc9c6ab458e11c771a28bfa4f4d185a8bb7bd8
2020/01/21 11:03:09 [INFO] ▶ Analyzing 1ebdfd95a56a921cd1d22fd901ce69373d1034de26d8736d5d97adfa56a90146
2020/01/21 11:03:09 [INFO] ▶ Analyzing 824e793a74032d84eda2c35a8ad8d3aa1b97abb001084d784d2fea3d0cf28f86
2020/01/21 11:03:09 [INFO] ▶ Analyzing 9f651067fe11d66b1118cdc8bcf9ed43013df2b2cee81a6b3803164caa44dee4
2020/01/21 11:03:09 [INFO] ▶ Analyzing 6fc9e75dddb58d474219b4cdea3b61610dfff9b7bf091346636c11b699ba8b41
2020/01/21 11:03:09 [INFO] ▶ Analyzing 9d923b80f405f4def65ae1399cb77586695b0530def6550141dd93d9779dad3a
2020/01/21 11:03:09 [WARN] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.5.1] contains 3 total vulnerabilities
2020/01/21 11:03:09 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.5.1] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress docker.elastic.co/logstash/logstash-oss:7.5.1
2020-01-21T09:03:11.316Z        INFO    Need to update DB
2020-01-21T09:03:11.316Z        INFO    Downloading DB...
2020-01-21T09:03:15.290Z        INFO    Reopening DB...
2020-01-21T09:03:27.673Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-01-21T09:03:27.680Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.5.1 (centos 7.7.1908)
===============================================================
Total: 695 (UNKNOWN: 0, LOW: 73, MEDIUM: 492, HIGH: 122, CRITICAL: 8)

usr/share/logstash/Gemfile.lock
===============================
Total: 24 (UNKNOWN: 3, LOW: 0, MEDIUM: 16, HIGH: 4, CRITICAL: 1)
```
