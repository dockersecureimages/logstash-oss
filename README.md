# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.5.2-alpine-3.11.3
2020/01/25 17:20:36 [INFO] ▶ Start clair-scanner
2020/01/25 17:20:41 [INFO] ▶ Server listening on port 9279
2020/01/25 17:20:41 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/25 17:20:41 [INFO] ▶ Analyzing 0642582bc922be6ed4bce4ad887e153e45d5a76d6aa86b9200e7a8e53512e426
2020/01/25 17:20:42 [INFO] ▶ Analyzing 63594eb730f78f6c21da9746918f6e6341183c4def377d22fe59f6f9b520a4e9
2020/01/25 17:20:42 [INFO] ▶ Analyzing cd2130043494902ce30fcd13e6514b0e6714eeffe738e9fd277f6007eb70ecb0
2020/01/25 17:20:42 [INFO] ▶ Image [secureimages/logstash-oss:7.5.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/logstash-oss:7.5.2-alpine-3.11.3
2020-01-25T15:20:45.044Z        INFO    Need to update DB
2020-01-25T15:20:45.045Z        INFO    Downloading DB...
2020-01-25T15:20:48.541Z        INFO    Reopening DB...
2020-01-25T15:20:53.830Z        INFO    Detecting Alpine vulnerabilities...
2020-01-25T15:20:53.831Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.5.2-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.5.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.5.2
2020/01/25 17:21:00 [INFO] ▶ Start clair-scanner
2020/01/25 17:21:12 [INFO] ▶ Server listening on port 9279
2020/01/25 17:21:12 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/25 17:21:12 [INFO] ▶ Analyzing 0e0503531f338a9a63688cd3379f32a38a06713aa78e6d633fcf7cfffab45c72
2020/01/25 17:21:14 [INFO] ▶ Analyzing fc88fc37cc033acbe6f2c11dd44d77916c3dea37e80939d3a7f8482481b39b12
2020/01/25 17:21:14 [INFO] ▶ Analyzing acd5f6c6d218429ad5655da7762ab85ca87c1ce9842c3e36e9e7562c210166ce
2020/01/25 17:21:14 [INFO] ▶ Analyzing 1fd78139038b2650c7cb3767920a335f0076a821a9c8fc22026f79720a626ade
2020/01/25 17:21:14 [INFO] ▶ Analyzing ed958532ed5ee3cbff27be17949a5abb2132be487c2488e4f81f1b8889899db3
2020/01/25 17:21:14 [INFO] ▶ Analyzing 5f9e8cd48537c36fccf060544a5131e394cee19bdbe73559eee4b3ad61543500
2020/01/25 17:21:14 [INFO] ▶ Analyzing 532a7d10dc990d1d7e3159973c9ee9b8051a10ce9408d1fa37d08d1c64faf124
2020/01/25 17:21:14 [INFO] ▶ Analyzing e7932f3724b5b730954ea142d3403245a9f5fec21c19c5051a8575714351f051
2020/01/25 17:21:14 [INFO] ▶ Analyzing 1fb85f7fd09e1019f42bda07bfe882f916c13752cc1bf3ae7bd10c92392f69f5
2020/01/25 17:21:14 [INFO] ▶ Analyzing ee971bca1bd71bfad0586f4a8b101cc47e287a3dad1b6e4c82cc9c19be61e708
2020/01/25 17:21:14 [INFO] ▶ Analyzing 254adbad1398d55dfc45ec7471a524135b12e62cfe452a86e9e7a94bb6812c0e
2020/01/25 17:21:14 [WARN] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.5.2] contains 3 total vulnerabilities
2020/01/25 17:21:14 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.5.2] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/logstash/logstash-oss:7.5.2
2020-01-25T15:21:22.151Z        INFO    Need to update DB
2020-01-25T15:21:22.151Z        INFO    Downloading DB...
2020-01-25T15:21:26.047Z        INFO    Reopening DB...
2020-01-25T15:21:39.075Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-01-25T15:21:39.083Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.5.2 (centos 7.7.1908)
===============================================================
Total: 698 (UNKNOWN: 0, LOW: 64, MEDIUM: 506, HIGH: 120, CRITICAL: 8)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```
