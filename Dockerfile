# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create a virtual environment
RUN python -m venv venv

# Activate the virtual environment and install dependencies
RUN /app/venv/bin/pip install --no-cache-dir -r requirements.txt

# Expose port 8080 to the outside world
EXPOSE 8080

# Set the environment variable to tell Flask to run the app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=production

# Set the entrypoint to run gunicorn server using the virtual environment
CMD ["/app/venv/bin/gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
