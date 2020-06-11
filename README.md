# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~383MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.7.1-alpine-3.12.0
2020/06/11 12:37:46 [INFO] ▶ Start clair-scanner
2020/06/11 12:37:50 [INFO] ▶ Server listening on port 9279
2020/06/11 12:37:50 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:37:50 [INFO] ▶ Analyzing 1d56c9186870149d47aa6f12e4dd933ec3de894a632f5f0c17214882a6b06d2f
2020/06/11 12:37:50 [INFO] ▶ Analyzing 00ca9084e139bf41eaf04ba2d5d3733445673c7774996917206daff9feeed290
2020/06/11 12:37:50 [INFO] ▶ Analyzing b265d8b6c6c01e36f513877365821760f4154e61ff0cc5935978fda745b42426
2020/06/11 12:37:50 [INFO] ▶ Image [secureimages/logstash-oss:7.7.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/logstash-oss:7.7.1-alpine-3.12.0
2020-06-11T09:37:53.219Z        INFO    Need to update DB
2020-06-11T09:37:53.219Z        INFO    Downloading DB...
2020/06/11 09:38:02 failed to decode APKINDEX JSON: json: cannot unmarshal number into Go value of type apk.apkIndex
2020-06-11T09:38:02.689Z        INFO    Detecting Alpine vulnerabilities...
2020-06-11T09:38:02.690Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.7.1-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 29 (UNKNOWN: 3, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```

## Official Docker image (~787MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.7.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.7.1
2020/06/11 12:38:07 [INFO] ▶ Start clair-scanner
2020/06/11 12:38:19 [INFO] ▶ Server listening on port 9279
2020/06/11 12:38:19 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/11 12:38:21 [INFO] ▶ Analyzing 733a05fb17c67caab1c60c4a58c3db8bd1ee27399ad0ad02ad5df31848b2851e
2020/06/11 12:38:21 [INFO] ▶ Analyzing 07f4213e595cb56a41ab5ebe2943c4b3ae94fd602351c072f111ad54dc1a8931
2020/06/11 12:38:21 [INFO] ▶ Analyzing b5cdf3912cf7163e2b432ffac159604e0ce13802fbed674c86bd549b800aaafc
2020/06/11 12:38:22 [INFO] ▶ Analyzing d7ea51f87bed9320cb8715df41d985fd63ebfe256be077377261d02644119cae
2020/06/11 12:38:22 [INFO] ▶ Analyzing b92df959fe360fc3068f437e93432b07cffd5b3591491177a98eb9ccb0f8b651
2020/06/11 12:38:22 [INFO] ▶ Analyzing 6ebb372af2781b08890120967fe7f0a9a1d417a09e533f51a58f11d421339b78
2020/06/11 12:38:22 [INFO] ▶ Analyzing 2c81b8c69338162b28649714e1c88effd24e374c232af03ff0b27c8c00a092c6
2020/06/11 12:38:22 [INFO] ▶ Analyzing 07db167d370cd2febb5837147720aef21397e6f2cd0ebe55c04815617ce4d63f
2020/06/11 12:38:22 [INFO] ▶ Analyzing a7cec57374d31de3812609690d8c0cab64f52d669fb2cb59d39d64a83ba92e82
2020/06/11 12:38:22 [INFO] ▶ Analyzing 53bee91ae683d70ee39baa59ded346d635dcfd2271b0c17358efa40d05d28b45
2020/06/11 12:38:22 [INFO] ▶ Analyzing c9af4182552212f57c7a81cbd9da1bb633e553c84b91869343e04f3d4b4b7d78
2020/06/11 12:38:22 [WARN] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.7.1] contains 1 total vulnerabilities
2020/06/11 12:38:22 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.7.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/logstash/logstash-oss:7.7.1
2020-06-11T09:38:24.810Z        INFO    Need to update DB
2020-06-11T09:38:24.810Z        INFO    Downloading DB...
2020-06-11T09:38:44.823Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-06-11T09:38:44.832Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.7.1 (centos 7.8.2003)
===============================================================
Total: 659 (UNKNOWN: 0, LOW: 385, MEDIUM: 267, HIGH: 7, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 29 (UNKNOWN: 3, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```
