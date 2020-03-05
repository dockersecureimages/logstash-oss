# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.6.1-alpine-3.11.3
2020/03/05 15:56:10 [INFO] ▶ Start clair-scanner
2020/03/05 15:56:14 [INFO] ▶ Server listening on port 9279
2020/03/05 15:56:14 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/05 15:56:14 [INFO] ▶ Analyzing 3c6cdb16b34a6643be628967e238e555fb51d30a4dc6fd7223386c3cd38cb598
2020/03/05 15:56:15 [INFO] ▶ Analyzing aef411f7b9782726d39641428cfe9244cffc0a7f0f7d9fd599124e17a8b362db
2020/03/05 15:56:15 [INFO] ▶ Analyzing 9c88625ce8367f0ca484b592d672b38326114e4232662feafec9d4cd056b3a42
2020/03/05 15:56:15 [INFO] ▶ Image [secureimages/logstash-oss:7.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/logstash-oss:7.6.1-alpine-3.11.3
2020-03-05T13:56:19.291Z        INFO    Need to update DB
2020-03-05T13:56:19.291Z        INFO    Downloading DB...
2020-03-05T13:56:23.431Z        INFO    Reopening DB...
2020-03-05T13:56:28.645Z        INFO    Detecting Alpine vulnerabilities...
2020-03-05T13:56:28.646Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash-oss:7.6.1-alpine-3.11.3 (alpine 3.11.3)
=============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 25 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.6.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.6.1
2020/03/05 15:56:35 [INFO] ▶ Start clair-scanner
2020/03/05 15:56:48 [INFO] ▶ Server listening on port 9279
2020/03/05 15:56:48 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 15:56:48 [INFO] ▶ Analyzing 41b234731b9aa385f144bece114056bbfaaec9a17f31a7d7bd50a83e7e48ced6
2020/03/05 15:56:48 [INFO] ▶ Analyzing d7e6a4b0567b6a6643be15e34ecae701c370964ed28ffe77af3ac3413d5211a0
2020/03/05 15:56:48 [INFO] ▶ Analyzing 35500bc22f74d1a5704959640e1e5de51e282d76dd949fef9b09a4f5a05aac2e
2020/03/05 15:56:48 [INFO] ▶ Analyzing e2cb640a4a720cdb38ab9bf530541b109008f56b8ab4524dccec042e9a6d7010
2020/03/05 15:56:48 [INFO] ▶ Analyzing 08ab84876a588d0da1105acf3c65f7f13d9d240ddeedcf4c9116c6bbc5f5cb16
2020/03/05 15:56:48 [INFO] ▶ Analyzing a6b40c4151d9b38816d5158c0f4db9e7218dc314d23425349f5eb5beb9d596f2
2020/03/05 15:56:48 [INFO] ▶ Analyzing 46c3cd51b47739cc4d2401c6981ab24a1a540608ac1ac63f8139fca4060fd273
2020/03/05 15:56:48 [INFO] ▶ Analyzing c76b8762b829d3681f01d3553ce353107d99bcac7a8b7e81635fbdcb00100745
2020/03/05 15:56:48 [INFO] ▶ Analyzing d993b2b6b9eec34a87c78c80e39d34b71c2b0b831caae793da15e61f7b1da734
2020/03/05 15:56:48 [INFO] ▶ Analyzing 603775ad97759ca7d7ef0d2c27c83ff99b84ab1819df333eaa3b4d7b915cedb1
2020/03/05 15:56:48 [INFO] ▶ Analyzing bff71c9125fe3c1878c3b4464e9c66b100c4be3fa9838827b4e9b53e26d1c7a6
2020/03/05 15:56:48 [INFO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
2020-03-05T13:56:51.118Z        INFO    Need to update DB
2020-03-05T13:56:51.118Z        INFO    Downloading DB...
2020-03-05T13:56:55.534Z        INFO    Reopening DB...
2020-03-05T13:57:11.244Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-03-05T13:57:11.252Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.6.1 (centos 7.7.1908)
===============================================================
Total: 672 (UNKNOWN: 0, LOW: 64, MEDIUM: 483, HIGH: 119, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 25 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```
