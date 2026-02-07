# Use official Python base
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install pytest

# Run tests by default
CMD ["pytest", "tests/"]
