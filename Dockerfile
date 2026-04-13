# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements file if you have one
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 5000 to the outside world
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]