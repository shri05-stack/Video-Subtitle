FROM python:3.12

RUN apt-get update && apt-get install -y ffmpeg

# Create and activate a virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install packages in the virtual environment
RUN pip install -U pip setuptools
RUN pip install -U openai-whisper setuptools-rust

ENTRYPOINT [ "bash" ]