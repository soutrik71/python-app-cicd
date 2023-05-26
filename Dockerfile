# use a python image
FROM python:3.6

# set the working directory in the container to /app
WORKDIR /app

# add the current directory to the container as /app
COPY . /app

# pip install flask
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# expose the default flask port
EXPOSE 8080

# execute the Flask app
ENTRYPOINT ["python"]
HEALTHCHECK CMD curl --fail http://localhost:8080/ || exit 1
CMD ["/app/app_code.py"]
