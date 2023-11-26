FROM python:bookworm
WORKDIR /app
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /config

COPY . /app/
RUN pip3 install --upgrade pip && pip3 install  -r requirements.txt

EXPOSE 9706/tcp
CMD [ "python3", "run.py", "/config/config.yml"]
