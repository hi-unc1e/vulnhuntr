FROM python:3.10-bookworm

WORKDIR /usr/src/vulnhuntr
COPY . .
RUN pip install --no-cache-dir .  --trusted-host mirrors.huaweicloud.com -i https://mirrors.huaweicloud.com/repository/pypi/simple

ENTRYPOINT [ "vulnhuntr" ]
