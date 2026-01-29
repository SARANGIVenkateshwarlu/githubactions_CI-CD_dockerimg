# Use the latest stable Python slim image
FROM python:3.12-slim

# Set environment variables
#ENV PYTHONDONTWRITEBYTECODE=1 \
#    PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Copy dependency file first (better Docker cache usage)
#COPY requirements.txt .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    pip install Flask

# Copy the application code
# COPY . .

# Expose Flask default port
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]