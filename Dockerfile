# Use the official Python image as the base
FROM python:latest

# Set environment variables
ENV PYTHONIOENCODING=utf-8
ENV LANG=C.UTF-8

# Add author label
LABEL authors="2t0m"

# Update system and install required dependencies
RUN apt -yqq update && \
    apt -yqq install gnupg2 ffmpeg curl unzip && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip3 install --upgrade pip --no-cache-dir && \
    pip3 install --upgrade setuptools --no-cache-dir

# Install spotdl directly with pip
RUN pip3 install spotdl --no-cache-dir

# Create necessary directories
RUN mkdir -p /app/downloads && \
    mkdir /root/.spotdl

# Set proper permissions
RUN chmod 1777 /root/.spotdl && \
    chmod 1777 /app/downloads

# Set the working directory
WORKDIR /app

# Define the default command to run
CMD ["spotdl", "web", \
     "--host", "0.0.0.0", \
     "--keep-alive", \
     "--web-use-output-dir", \
     "--output", "/app/downloads", \
     "--web-gui-repo", "https://github.com/2t0m/web-ui/tree/master/dist"]
