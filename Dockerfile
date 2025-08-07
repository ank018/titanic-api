# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy your app and model
COPY app.py .
COPY model.pkl .

# Expose the port your app runs on
EXPOSE 5000

# Command to run your Flask app
CMD ["python", "app.py"]
