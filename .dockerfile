FROM python:3.14-slim
COPY --from=ghcr.io/astral-sh/uv:0.11.13 /uv /uvx /bin/

RUN apt-get update \
    && apt-get install --no-install-recommends -y ffmpeg curl build-essential git \
    && rm -rf /var/lib/apt/lists/*

COPY pyproject.toml uv.lock /home/base/
RUN uv sync