FROM pytorch/pytorch:2.7.1-cuda11.8-cudnn9-runtime

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update &&
    apt-get install -y git ffmpeg &&
    apt-get clean all &&
    rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install openai-whisper==20250625 &&
    rm -rf /root/.chache/ &&
    rm -rf /root/.cache/pip/ &&
    rm -rf /tmp/* &&
    rm -rf /var/tmp/*

WORKDIR /app
