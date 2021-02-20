# Logstash OSS

Logstash OSS, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~738MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash-oss:7.11.1-alpine-3.13.2
2021/02/20 12:01:25 [INFO] ▶ Start clair-scanner
2021/02/20 12:01:33 [INFO] ▶ Server listening on port 9279
2021/02/20 12:01:33 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 12:01:33 [INFO] ▶ Analyzing 029d9e2ab32459dcaba4a9c2664ad5a24ce502ef1760af99fe8c88ed305219f1
2021/02/20 12:01:33 [INFO] ▶ Analyzing 637ecb56b4b7a801f9bfa40f9d2db2b0618db7310aa60168c9f3b7d08c158eee
2021/02/20 12:01:33 [INFO] ▶ Analyzing 65173411a04afe6d442057b7820b5de4f7489a1ab7374f846c86bd3a0b51a97e
2021/02/20 12:01:33 [WARN] ▶ Image [secureimages/logstash-oss:7.11.1-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 12:01:33 [ERRO] ▶ Image [secureimages/logstash-oss:7.11.1-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/logstash-oss:7.11.1-alpine-3.13.2
2021-02-20T12:01:34.927Z        INFO    Need to update DB
2021-02-20T12:01:34.927Z        INFO    Downloading DB...
2021-02-20T12:01:51.053Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T12:01:51.056Z        INFO    Detecting  vulnerabilities...

secureimages/logstash-oss:7.11.1-alpine-3.13.2 (alpine 3.13.2)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 3 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 1)
```

## Official Docker image (~962MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash-oss:7.11.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash-oss:7.11.1
2021/02/20 12:01:56 [INFO] ▶ Start clair-scanner
2021/02/20 12:02:11 [INFO] ▶ Server listening on port 9279
2021/02/20 12:02:11 [INFO] ▶ Analyzing 291eb894538de0baee3beecbbb57ef8668b00974b05062ff0d78c0dc110820ac
2021/02/20 12:02:14 [INFO] ▶ Analyzing f6e470614171b9d8c33ecec979c50ee5b10b327959bd19ab91df3e9271d6add8
2021/02/20 12:02:14 [INFO] ▶ Analyzing 618f451253e7c319bf341bfa8a264cfe7c78c0cd5493497ec282f6e904ec7a2a
2021/02/20 12:02:14 [INFO] ▶ Analyzing a93eaa9b283d0562be1403cfcffa98ff54f4f3e05810aa8d5a5b66fee2f9834a
2021/02/20 12:02:15 [INFO] ▶ Analyzing bd0b0e17ef9abf88ceb26d0e152fc29fa54ab9bce14b7cab5c9bb35ee381235f
2021/02/20 12:02:15 [INFO] ▶ Analyzing 30def1a190887771e46e23f36c9d686c6343d919d21fe8e4b455d9a8976c54d9
2021/02/20 12:02:15 [INFO] ▶ Analyzing 6529a2eb1a9394f6f0ce2f7d931c939da7d4179d3435a1b612fa6357645296e2
2021/02/20 12:02:15 [INFO] ▶ Analyzing 1a3eb82b00b788e7062ca8c782461ca3d57ae97e44dd47bcc8e3e9059658c471
2021/02/20 12:02:15 [INFO] ▶ Analyzing d9e75c1bc4eb93b01d6e5c15e27176247aeff35051e67d6460178575bc74eb50
2021/02/20 12:02:15 [INFO] ▶ Analyzing d8c9c238579cd9c37a6a280b214bc39d56137c1606b19863d258106dce71b94f
2021/02/20 12:02:15 [INFO] ▶ Analyzing cf2838666724bcfa5b6ffbae4ba4897d08045c64d3d9b63306136d9db04336e3
2021/02/20 12:02:15 [INFO] ▶ Analyzing 51f1a8d03bff6b5b9afe81c48353be74a9680bc1a678df1879af989448c8dc50
2021/02/20 12:02:15 [INFO] ▶ Image [docker.elastic.co/logstash/logstash-oss:7.11.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress docker.elastic.co/logstash/logstash-oss:7.11.1
2021-02-20T12:02:17.133Z        INFO    Need to update DB
2021-02-20T12:02:17.133Z        INFO    Downloading DB...
2021-02-20T12:02:34.207Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T12:02:34.247Z        INFO    Detecting  vulnerabilities...

docker.elastic.co/logstash/logstash-oss:7.11.1 (centos 7.9.2009)
================================================================
Total: 596 (UNKNOWN: 0, LOW: 357, MEDIUM: 235, HIGH: 4, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 3 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 1)
```
