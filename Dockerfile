FROM node:12-alpine AS build-env
RUN apk --no-cache add git
COPY entrypoint.sh /entrypoint.sh
COPY action/actionIndex.js /actionIndex.js
ENTRYPOINT ["/entrypoint.sh"]
