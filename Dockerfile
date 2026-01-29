FROM python:3-alpine
RUN apk upgrade --no-cache \
 && apk add --no-cache git \
 && pip install boto3 git+https://git@github.com/octodns/octodns.git octodns-route53
WORKDIR /data
ENTRYPOINT ["octodns-sync"]
