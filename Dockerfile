# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . /app/

# exposing port 5000
EXPOSE 5000

# command to run on container start
CMD [ "gunicorn", "--bind", "o.o.o.o:5000" "app:app" ]