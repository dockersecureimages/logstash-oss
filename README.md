# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~377MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.8.1-alpine-3.12.0
2020/07/31 16:25:38 [INFO] ▶ Start clair-scanner
2020/07/31 16:25:42 [INFO] ▶ Server listening on port 9279
2020/07/31 16:25:42 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/31 16:25:42 [INFO] ▶ Analyzing 053fcb5a6533ba7472b328a3743440386191a9c6513ce6c16df8ffc8eda25122
2020/07/31 16:25:43 [INFO] ▶ Analyzing 2be78bcede6585304a8386f2b8933210835bb033ce7ee0736864637d37f7218f
2020/07/31 16:25:43 [INFO] ▶ Analyzing a61e881761c7844fb2a7b30f53a051fd25cddcd2a5146a0e5dc78607bdf52b0d
2020/07/31 16:25:43 [INFO] ▶ Image [secureimages/logstash-oss:7.8.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/logstash-oss:7.8.1-alpine-3.12.0
2020-07-31T13:25:46.583Z        INFO    Need to update DB
2020-07-31T13:25:46.583Z        INFO    Downloading DB...
2020-07-31T13:25:57.039Z        INFO    Detecting Alpine vulnerabilities...
2020-07-31T13:25:57.040Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.8.1-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~783MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.8.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.8.1
2020/07/31 16:26:03 [INFO] ▶ Start clair-scanner
2020/07/31 16:26:19 [INFO] ▶ Server listening on port 9279
2020/07/31 16:26:19 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/07/31 16:26:20 [INFO] ▶ Analyzing d8de4c608954baa7f5a8eaf55fa7cafc5a17521e8fcef1757db9ab340cc215b4
2020/07/31 16:26:20 [INFO] ▶ Analyzing aaa2acf98db232c9eb4ebeb1c7a9954be4cc410440f380ab3aeb93c14ceb72c1
2020/07/31 16:26:20 [INFO] ▶ Analyzing f78a7f965e7fe45a3fa6469f214ed3bcaa47236e53e04b275ddc470cf28e435c
2020/07/31 16:26:21 [INFO] ▶ Analyzing 2e25e9f852423516a511b0229b7797cae6fbfeb80de7514b3adabb6ba8dc8c53
2020/07/31 16:26:21 [INFO] ▶ Analyzing afee34352fb98a13d0006b3c6ab8198ab376808e422e99dd670e815ac8e94caf
2020/07/31 16:26:21 [INFO] ▶ Analyzing 64967a704075b8c7c1628fd0819d4b22cb5c0f50a2e26a7dd2f5c2fec979e0cb
2020/07/31 16:26:21 [INFO] ▶ Analyzing 9b98d3de00d2c32ee6b4d9f4d77546c1d5ee3529a56deb9556301ee0352a3128
2020/07/31 16:26:21 [INFO] ▶ Analyzing dfd3ff5fb64f8cbcad44279f2b625ccfb2f9755ba41f9e01de2b46cedfd44316
2020/07/31 16:26:21 [INFO] ▶ Analyzing b3f04908c0c5b01a8540b2aebeff89d6f071a089f0df1ecd7de834a8a4760808
2020/07/31 16:26:21 [INFO] ▶ Analyzing b8fdf23764f9d17c7645e8cad2366441e19ca2c53ed30626caf975ead068ae9b
2020/07/31 16:26:21 [INFO] ▶ Analyzing 8268c9fc3f5ea40f6e5dba80b6a5dae0df07e8be2ee13b82b23adb8c43acafab
2020/07/31 16:26:21 [WARN] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.8.1] contains 3 total vulnerabilities
2020/07/31 16:26:21 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.8.1] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress docker.elastic.co/logstash/logstash-oss:7.8.1
2020-07-31T13:26:25.893Z        INFO    Need to update DB
2020-07-31T13:26:25.893Z        INFO    Downloading DB...
2020-07-31T13:26:48.753Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-07-31T13:26:48.765Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.8.1 (centos 7.8.2003)
===============================================================
Total: 689 (UNKNOWN: 0, LOW: 387, MEDIUM: 291, HIGH: 11, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 0, CRITICAL: 0)
```
