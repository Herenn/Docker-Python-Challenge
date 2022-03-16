FROM python:3.9
COPY . .
RUN pip install mysql-connector-python
RUN pip install Flask
RUN pip install mysqlclient
CMD ["python", "application.py"]