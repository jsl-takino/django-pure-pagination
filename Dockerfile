FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
RUN pip install django>=1.11

ADD ./example_project /app
ADD ./pure_pagination /packages/pure_pagination

ENV PYTHONPATH /packages/
WORKDIR /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
