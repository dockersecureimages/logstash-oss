# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~384MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.8.0-alpine-3.12.0
2020/06/19 18:33:34 [INFO] ▶ Start clair-scanner
2020/06/19 18:33:38 [INFO] ▶ Server listening on port 9279
2020/06/19 18:33:38 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 18:33:38 [INFO] ▶ Analyzing cca2d2926472fef185d8a149e6b35c99934bb8a4bc313213d6f2f6373eef1869
2020/06/19 18:33:39 [INFO] ▶ Analyzing 684dfd361663ccac9d77274471da722ce4ac98554bc25c97c1cfe20c31346cd2
2020/06/19 18:33:39 [INFO] ▶ Analyzing c73db7c78b86861b0a77742557a75db48906c716f101205cedec34d0116d1ecb
2020/06/19 18:33:39 [INFO] ▶ Image [secureimages/logstash-oss:7.8.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/logstash-oss:7.8.0-alpine-3.12.0
2020-06-19T15:33:44.307Z        INFO    Need to update DB
2020-06-19T15:33:44.308Z        INFO    Downloading DB...
2020-06-19T15:33:55.367Z        INFO    Detecting Alpine vulnerabilities...
2020-06-19T15:33:55.368Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.8.0-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 30 (UNKNOWN: 4, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```

## Official Docker image (~787MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.8.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.8.0
2020/06/19 18:34:01 [INFO] ▶ Start clair-scanner
2020/06/19 18:34:15 [INFO] ▶ Server listening on port 9279
2020/06/19 18:34:15 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/19 18:34:17 [INFO] ▶ Analyzing 7dad39977b9c55310ef64ecef76f1671359522e65d201bf4b05a442fc20c8fb5
2020/06/19 18:34:18 [INFO] ▶ Analyzing d24b9c03dadaac5337d4e86c22c9c211fb8dc12d1f224342dfbcb62e217aeba0
2020/06/19 18:34:18 [INFO] ▶ Analyzing d6899dc2c13852beeeb1e69dd2e8ca832cfd286b1a0c991f87727e1dbd306b63
2020/06/19 18:34:18 [INFO] ▶ Analyzing cab954e1620a6b9c8cf06da7470812b25af8ef8b8adaac295f1df8518c098683
2020/06/19 18:34:18 [INFO] ▶ Analyzing 8579ca5144cef9ab8481a7f258de380e7a72b6df08e40b0ecd3a59b13633bbeb
2020/06/19 18:34:18 [INFO] ▶ Analyzing b4dc9618e77500dcdc50a34aec9549fbe59a9b96f39643b92c41d5ac003bbac1
2020/06/19 18:34:18 [INFO] ▶ Analyzing 516a54eb1ae897935728d57021e9d0d369e549e6735b4d0116048e89ef8dfd76
2020/06/19 18:34:18 [INFO] ▶ Analyzing b9b92f7ec859ff4a020170a15ae295d5ea41ba7e1b028b5fdc724ce3a59bec43
2020/06/19 18:34:18 [INFO] ▶ Analyzing 9899e23079470105b5ec010327857b9c10fe9705ea9e5697db35ee646d159219
2020/06/19 18:34:18 [INFO] ▶ Analyzing b9906448f8ce67b89947262cb1fb9ce90f73be1df6de7f812b702dcf49b3a014
2020/06/19 18:34:18 [INFO] ▶ Analyzing 7c78a9ca30e5a61ee11b97de2e97b2032e9bab09baeb814c1385c7a2beb16fba
2020/06/19 18:34:18 [INFO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.8.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/logstash/logstash-oss:7.8.0
2020-06-19T15:34:23.037Z        INFO    Need to update DB
2020-06-19T15:34:23.037Z        INFO    Downloading DB...
2020-06-19T15:34:43.807Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-06-19T15:34:43.817Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.8.0 (centos 7.8.2003)
===============================================================
Total: 664 (UNKNOWN: 0, LOW: 383, MEDIUM: 276, HIGH: 5, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 30 (UNKNOWN: 4, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```
