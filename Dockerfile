FROM python:slim-buster

RUN apt-get update && apt-get install -y --no-install-recommends gcc musl-dev git && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir pyinstaller requests yt-dlp\
    && git clone https://github.com/mikf/gallery-dl \
    && python gallery-dl/scripts/pyinstaller.py
