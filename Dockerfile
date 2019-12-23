FROM python:3-alpine
ARG VERSION=
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev && \
    python -m pip install --no-cache-dir --disable-pip-version-check \
           ansible$( [ ! -z "$VERSION" ] && echo "==${VERSION}" ||: ) && \
    apk del gcc musl-dev libffi-dev openssl-dev
