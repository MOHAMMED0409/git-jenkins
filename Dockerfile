# Use the official Python image as the base
FROM python:3.8-slim-buster

# Set the working directory inside the container
WORKDIR /python-docker

# Copy requirements.txt file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port Flask will use
EXPOSE 5000

# Run the Flask application
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
