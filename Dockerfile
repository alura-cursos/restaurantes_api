FROM python:bullseye
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN apt install gcc -y
RUN pip install --upgrade pip
RUN pip install -r requirements.txt