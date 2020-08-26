FROM alpine

LABEL "repository"="https://github.com/GuoJuna/sync-repo-action"
LABEL "homepage"="https://github.com/GuoJuna/sync-repo-action"
LABEL "maintainer"="GuoJun <guo_juna@qq.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
