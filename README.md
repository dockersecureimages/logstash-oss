# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~393MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.6.2-alpine-3.11.6
2020/04/25 13:56:15 [INFO] ▶ Start clair-scanner
2020/04/25 13:56:20 [INFO] ▶ Server listening on port 9279
2020/04/25 13:56:20 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 13:56:20 [INFO] ▶ Analyzing ca6ac4f7b8384caed606e008f24654512e6f5c96297df69947876a4015bb22b6
2020/04/25 13:56:20 [INFO] ▶ Analyzing fd86238ba26f138a1e7aa11ca0204043ccb84fb2fce7882518d18a4d60df1ae0
2020/04/25 13:56:20 [INFO] ▶ Analyzing ec31f309ccb579772f8524b42b2e879f36d9fcd132acfcb3ee9b2ca66bf90ac4
2020/04/25 13:56:20 [INFO] ▶ Image [secureimages/logstash-oss:7.6.2-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/logstash-oss:7.6.2-alpine-3.11.6
2020-04-25T10:56:28.313Z        INFO    Need to update DB
2020-04-25T10:56:28.313Z        INFO    Downloading DB...
2020-04-25T10:56:38.190Z        INFO    Detecting Alpine vulnerabilities...
2020-04-25T10:56:38.191Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.6.2-alpine-3.11.6 (alpine 3.11.6)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 5, CRITICAL: 1)
```

## Official Docker image (~812MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.6.2
2020/04/25 13:56:46 [INFO] ▶ Start clair-scanner
2020/04/25 13:57:02 [INFO] ▶ Server listening on port 9279
2020/04/25 13:57:02 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/25 13:57:02 [INFO] ▶ Analyzing 7d06a39e8ea2bbcd8760d15976efe1825d59efb291bed9b2093e9e637481949f
2020/04/25 13:57:02 [INFO] ▶ Analyzing 295584e48ae40b1802cbb4ad5c53c8132720ff7421ad00d12956377bb8cf8e3a
2020/04/25 13:57:02 [INFO] ▶ Analyzing 33da4ad62bdad20298d159ce11509d2b00d08f4bb40ec723a97cfe1957e345ea
2020/04/25 13:57:02 [INFO] ▶ Analyzing a958e08c2e38ee657d0411abe71725430a3eddf85a5e2afa8e384c9f1ccc169c
2020/04/25 13:57:02 [INFO] ▶ Analyzing f76b0fbd780e3423eff085adcf5d4e4fa87d4b526b3af0680917f4740ac8df72
2020/04/25 13:57:02 [INFO] ▶ Analyzing e35d6584f2922ec156c6846f0806ddab39954879e0e8af6df7eb515af4d598bc
2020/04/25 13:57:02 [INFO] ▶ Analyzing 7d49d8b82b4193b0f264de0cdad83db0ce24a45b6e0e651a3886c5815fec6bb5
2020/04/25 13:57:02 [INFO] ▶ Analyzing f5128292717de1fe848a91e733f1732f37b6dc289acf976ab924642a7d932738
2020/04/25 13:57:02 [INFO] ▶ Analyzing bb7d22fdd38399523afaf9b4257d8bbde5640ce371273c2c574729795c71c557
2020/04/25 13:57:02 [INFO] ▶ Analyzing 4fce7c8644550976bb9fae0adcaa375591bda3196ebc9a8705b223f2e634b893
2020/04/25 13:57:02 [INFO] ▶ Analyzing 144a92921879d0c43268f2880ac98d338082aa258e174c6603a39ce1f020dbdc
2020/04/25 13:57:02 [WARN] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.6.2] contains 16 total vulnerabilities
2020/04/25 13:57:02 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.6.2] contains 16 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress docker.elastic.co/logstash/logstash-oss:7.6.2
2020-04-25T10:57:16.868Z        INFO    Need to update DB
2020-04-25T10:57:16.868Z        INFO    Downloading DB...
2020-04-25T10:57:41.432Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-04-25T10:57:41.442Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.6.2 (centos 7.7.1908)
===============================================================
Total: 717 (UNKNOWN: 0, LOW: 65, MEDIUM: 523, HIGH: 123, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 5, CRITICAL: 1)
```
