FROM python:bookworm
WORKDIR /app
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive

COPY tg3442de_exporter/* /app/

RUN apt-get update && apt install -y python3-click python3-pycryptodome python3-requests python3-prometheus-client python3-ruamel.yaml python3-deepmerge

EXPOSE 9706/tcp
CMD [ "python", "./tg3442de_exporter.py", "/config/config.yaml"]
