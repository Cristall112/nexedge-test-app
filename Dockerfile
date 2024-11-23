FROM python:3.9-slim

WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the required Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 80 for the application
EXPOSE 80

# Run the Flask application
CMD ["python", "app.py"]
