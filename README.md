# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.6.2-alpine-3.11.5
2020/04/01 16:34:13 [INFO] ▶ Start clair-scanner
2020/04/01 16:34:17 [INFO] ▶ Server listening on port 9279
2020/04/01 16:34:17 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/01 16:34:17 [INFO] ▶ Analyzing e7e4f15fc0026e60b3517a264c55252a7d1b8f3ddca8b29d811b1d00ed3c2346
2020/04/01 16:34:18 [INFO] ▶ Analyzing 661334159435b1ca65af402cf73899c08278e6a51233f2664bd638164813f4da
2020/04/01 16:34:18 [INFO] ▶ Analyzing 39ff6311fd56677a8df3925a148619e5345590738898999806e5a5bee24d039d
2020/04/01 16:34:18 [INFO] ▶ Image [secureimages/logstash-oss:7.6.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/logstash-oss:7.6.2-alpine-3.11.5
2020-04-01T13:34:20.668Z        INFO    Need to update DB
2020-04-01T13:34:20.668Z        INFO    Downloading DB...
2020-04-01T13:35:15.658Z        INFO    Reopening DB...
2020-04-01T13:35:23.479Z        INFO    Detecting Alpine vulnerabilities...
2020-04-01T13:35:23.480Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.6.2-alpine-3.11.5 (alpine 3.11.5)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 4, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.6.2
2020/04/01 16:35:30 [INFO] ▶ Start clair-scanner
2020/04/01 16:35:44 [INFO] ▶ Server listening on port 9279
2020/04/01 16:35:44 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/01 16:35:44 [INFO] ▶ Analyzing 7d06a39e8ea2bbcd8760d15976efe1825d59efb291bed9b2093e9e637481949f
2020/04/01 16:35:44 [INFO] ▶ Analyzing 295584e48ae40b1802cbb4ad5c53c8132720ff7421ad00d12956377bb8cf8e3a
2020/04/01 16:35:44 [INFO] ▶ Analyzing 33da4ad62bdad20298d159ce11509d2b00d08f4bb40ec723a97cfe1957e345ea
2020/04/01 16:35:44 [INFO] ▶ Analyzing a958e08c2e38ee657d0411abe71725430a3eddf85a5e2afa8e384c9f1ccc169c
2020/04/01 16:35:44 [INFO] ▶ Analyzing f76b0fbd780e3423eff085adcf5d4e4fa87d4b526b3af0680917f4740ac8df72
2020/04/01 16:35:44 [INFO] ▶ Analyzing e35d6584f2922ec156c6846f0806ddab39954879e0e8af6df7eb515af4d598bc
2020/04/01 16:35:44 [INFO] ▶ Analyzing 7d49d8b82b4193b0f264de0cdad83db0ce24a45b6e0e651a3886c5815fec6bb5
2020/04/01 16:35:44 [INFO] ▶ Analyzing f5128292717de1fe848a91e733f1732f37b6dc289acf976ab924642a7d932738
2020/04/01 16:35:44 [INFO] ▶ Analyzing bb7d22fdd38399523afaf9b4257d8bbde5640ce371273c2c574729795c71c557
2020/04/01 16:35:44 [INFO] ▶ Analyzing 4fce7c8644550976bb9fae0adcaa375591bda3196ebc9a8705b223f2e634b893
2020/04/01 16:35:44 [INFO] ▶ Analyzing 144a92921879d0c43268f2880ac98d338082aa258e174c6603a39ce1f020dbdc
2020/04/01 16:35:44 [WARN] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.6.2] contains 13 total vulnerabilities
2020/04/01 16:35:44 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.6.2] contains 13 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/logstash/logstash-oss:7.6.2
2020-04-01T13:35:46.244Z        INFO    Need to update DB
2020-04-01T13:35:46.244Z        INFO    Downloading DB...
2020-04-01T13:35:54.838Z        INFO    Reopening DB...
2020-04-01T13:36:11.991Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-04-01T13:36:12.000Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.6.2 (centos 7.7.1908)
===============================================================
Total: 678 (UNKNOWN: 0, LOW: 67, MEDIUM: 482, HIGH: 123, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 4, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```
