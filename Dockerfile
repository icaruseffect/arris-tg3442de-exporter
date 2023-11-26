FROM python:bookworm
WORKDIR /app
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive

COPY ./* /app/

RUN pip3 install -r requirements.txt

EXPOSE 9706/tcp
CMD [ "python", "./tg3442de_exporter.py", "/config/config.yaml"]
