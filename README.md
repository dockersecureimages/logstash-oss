# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~377MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.9.1-alpine-3.12.0
2020/09/04 15:39:56 [INFO] ▶ Start clair-scanner
2020/09/04 15:40:00 [INFO] ▶ Server listening on port 9279
2020/09/04 15:40:00 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 15:40:00 [INFO] ▶ Analyzing 65f510254d57ca114a5ce00b69d04c82392956b0ce27aef8429cacdd078acdd4
2020/09/04 15:40:00 [INFO] ▶ Analyzing cc144b0fd24dc59ba6050517ca2dcd2a6b9034047e64cbf050821513c83d397a
2020/09/04 15:40:00 [INFO] ▶ Analyzing b2f2dcfb5f0d93e41e507178661e2a6c5de2d3666e5767a982c3728303b099a0
2020/09/04 15:40:00 [INFO] ▶ Image [secureimages/logstash-oss:7.9.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/logstash-oss:7.9.1-alpine-3.12.0
2020-09-04T15:40:05.350Z        INFO    Need to update DB
2020-09-04T15:40:05.350Z        INFO    Downloading DB...
2020-09-04T15:40:15.181Z        INFO    Detecting Alpine vulnerabilities...
2020-09-04T15:40:15.183Z        INFO    Detecting ruby vulnerabilities...

secureimages/logstash-oss:7.9.1-alpine-3.12.0 (alpine 3.12.0)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 1, CRITICAL: 0)
```

## Official Docker image (~733MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.9.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.9.1
2020/09/04 15:40:22 [INFO] ▶ Start clair-scanner
2020/09/04 15:40:33 [INFO] ▶ Server listening on port 9279
2020/09/04 15:40:33 [INFO] ▶ Analyzing 33b5e87a65b65985a0445827bd27436b3467bb578d1b1cc2aa0b6000685fb4bf
2020/09/04 15:40:37 [INFO] ▶ Analyzing de3dfe44919bf26b740167eac62e7aa35502db8f59a3ad01fc8fdef830037b5b
2020/09/04 15:40:38 [INFO] ▶ Analyzing 326dacc5f399340525fa2ae2b76ce4c535e3a3facb7e41819ba5c24171a142df
2020/09/04 15:40:38 [INFO] ▶ Analyzing 07c98e4a1f16eb60fa12e0913f00bbbfe222b1b82fd4300c23eb3a5ef7c8b1a7
2020/09/04 15:40:38 [INFO] ▶ Analyzing a4f8e5070134e314753ef7fffe54a139818f8e75439e0f362c1fee6f3769ae02
2020/09/04 15:40:38 [INFO] ▶ Analyzing c71c95b24794f1c629180dde7619d1b1a3d480d36530aa1acb5fbc9d6dc016ce
2020/09/04 15:40:38 [INFO] ▶ Analyzing 8a66c879fcda0d1d32cb46f3d297ffd314ddd58f1a3a02f1805a81920a53e70d
2020/09/04 15:40:38 [INFO] ▶ Analyzing 40c363ec470d0eb5fb05fc69cad7a7755811a0ec6cc967598c696154bbfc033a
2020/09/04 15:40:38 [INFO] ▶ Analyzing ef7b4e1525fc4845697dd9813ae68bc58d1743888a291cc29e300be19c80d3da
2020/09/04 15:40:38 [INFO] ▶ Analyzing 219bb2d132f36f716c7326d6a22e0860a37a85cea1528f264f81835ce2fddf5a
2020/09/04 15:40:38 [INFO] ▶ Analyzing 0663084b9b4d2617ee0e845259c4aa07a1aef99c4ba76356cd40c00a3fbba7fd
2020/09/04 15:40:38 [INFO] ▶ Analyzing 407f391b2a31e45135fbdb8936fedf812c17b3e43cad3fbc98518f30d11a132b
2020/09/04 15:40:38 [INFO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.9.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress docker.elastic.co/logstash/logstash-oss:7.9.1
2020-09-04T15:40:40.077Z        INFO    Need to update DB
2020-09-04T15:40:40.077Z        INFO    Downloading DB...
2020-09-04T15:40:55.780Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-09-04T15:40:55.813Z        INFO    Detecting ruby vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.9.1 (centos 7.8.2003)
===============================================================
Total: 690 (UNKNOWN: 0, LOW: 388, MEDIUM: 295, HIGH: 7, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 1, CRITICAL: 0)
```
