FROM python:latest

WORKDIR /usr/src/app

COPY . /usr/src/app

COPY ./requirements.txt /usr/src/app/requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]