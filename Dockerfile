# Use the Python 2.7 image as the base
FROM python:2.7

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP app.py

# Expose port 5000 for Flask app
EXPOSE 5000

# Define the command to run the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]
