
#Pulling base img
FROM python:3.11-alpine

# setting working directory
WORKDIR /app

# Install build dependencies for common Python packages
RUN apk add --no-cache \
    build-base \
    libffi-dev \
    musl-dev \
    gcc \
    py3-pip \
    openssl-dev \
    && pip install --upgrade pip

#copying requirements file so that dependencies and packages can be installed first
COPY requirements.txt .
# --no-cache-dir --> allows or prevents pip from saving package installation files (caches) to disk inside the image
RUN pip install --no-cache-dir -r requirements.txt

# copying application code files from local to container
COPY app/ /app

# Set environment variables ((only needed if using `flask run`, not used here but fine to keep))
ENV FLASK_APP=app/app.py

#Exposing port
EXPOSE 5000

#Run app
CMD ["python","app.py"]
