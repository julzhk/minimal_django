FROM python:3.7
ENV PYTHONUNBUFFERED 1

#RUN mkdir /run
ADD . /run
WORKDIR /run

RUN pip install -r requirements.txt
RUN pwd
RUN ls

ENTRYPOINT ["python3", "minimal_django.py"]
CMD ["runserver", "0.0.0.0:8008"]
EXPOSE 8008
