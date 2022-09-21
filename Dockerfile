FROM python:3.8
RUN mkdir /django-project
WORKDIR /django-project
ADD . /django-project/
RUN pip install -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
EXPOSE 8000
CMD python3 manage.py runserver  0:8000


