# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the entire repository into the container at /app
COPY . /app

# Install any dependencies
# (Modify this according to your project's dependencies)
RUN pip install -r requirements.txt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set environment variables if needed
# ENV PLEX_URL=<your_plex_url>
# ENV PLEX_TOKEN=<your_plex_token>

# Command to run your script
CMD ["python", "your_script.py"]
