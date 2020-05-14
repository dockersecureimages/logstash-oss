# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~383MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.7.0-alpine-3.11.6
2020/05/14 12:54:27 [INFO] ▶ Start clair-scanner
2020/05/14 12:54:31 [INFO] ▶ Server listening on port 9279
2020/05/14 12:54:31 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/14 12:54:31 [INFO] ▶ Analyzing 1b35a8f0313dc26ea917c08fee1799916879c18f62bff104583995f82fc167b5
2020/05/14 12:54:31 [INFO] ▶ Analyzing aa3ede81aa55ed62a34fcb6441e5deade1063bcb3c63693c3ffb4446063ad789
2020/05/14 12:54:31 [INFO] ▶ Analyzing 8aba958e9a494f24b11ceee62da3972727678d84db120717edb4d1de2fd3a516
2020/05/14 12:54:32 [INFO] ▶ Image [secureimages/logstash-oss:7.7.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/logstash-oss:7.7.0-alpine-3.11.6
2020-05-14T09:54:34.153Z        INFO    Need to update DB
2020-05-14T09:54:34.153Z        INFO    Downloading DB...
2020-05-14T09:54:44.378Z        INFO    Detecting Alpine vulnerabilities...
2020-05-14T09:54:44.379Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.7.0-alpine-3.11.6 (alpine 3.11.6)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 18, HIGH: 3, CRITICAL: 2)
```

## Official Docker image (~739MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.7.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.7.0
2020/05/14 12:54:50 [INFO] ▶ Start clair-scanner
2020/05/14 12:55:01 [INFO] ▶ Server listening on port 9279
2020/05/14 12:55:01 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/05/14 12:55:01 [INFO] ▶ Analyzing 97db17c16f0a204ae83fcde309b808cb0f1585e7166120ab4a66bce9ea8edc25
2020/05/14 12:55:01 [INFO] ▶ Analyzing 128dd2a52296fe620aee1de6eaac270a4cf15965a615d9da21bcd35a5313ab0e
2020/05/14 12:55:01 [INFO] ▶ Analyzing fafc5778e8054b2c2a33015eb94cb62d216a6c1a0374a1ec1f07df7a615dc420
2020/05/14 12:55:01 [INFO] ▶ Analyzing 8ebdc1ce28f08b6197a77d618682c3369d88e3ab57814ce3e0f842eff94a72ef
2020/05/14 12:55:01 [INFO] ▶ Analyzing fdd67ec1c7fe709cb14fe3026ffcaa8de724fc3f7726f2267421e451ce5edb96
2020/05/14 12:55:01 [INFO] ▶ Analyzing a833969aac597c5f96a0f7e56b61e2633a7d9bb40c32ac1c37cc3e3d8da46c61
2020/05/14 12:55:01 [INFO] ▶ Analyzing 120f6bcfda2426816284b1430ec9bb64c441ac21d168aa4a15482ab60a61fa64
2020/05/14 12:55:01 [INFO] ▶ Analyzing 39062e2c492b9b44325ec43f161d6232df585513171dd40a2c24bdd0ffe57cbd
2020/05/14 12:55:01 [INFO] ▶ Analyzing 96d5c1e1c351e465e788ed23bc96b1b4a9066ad39e3bd4408625b3e09adfa2ea
2020/05/14 12:55:01 [INFO] ▶ Analyzing 2ae0f71ff9f9e90f63f3e42f8b06657b611c0f19147c79219a153865af072f1d
2020/05/14 12:55:01 [INFO] ▶ Analyzing d26b4a77eff3689edee70f762332c3801ef25c20585921e615dde3b1b177c7a0
2020/05/14 12:55:01 [INFO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress docker.elastic.co/logstash/logstash-oss:7.7.0
2020-05-14T09:55:04.338Z        INFO    Need to update DB
2020-05-14T09:55:04.338Z        INFO    Downloading DB...
2020-05-14T09:55:20.181Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-05-14T09:55:20.192Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.7.0 (centos 7.8.2003)
===============================================================
Total: 649 (UNKNOWN: 0, LOW: 384, MEDIUM: 260, HIGH: 5, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 18, HIGH: 3, CRITICAL: 2)
```
