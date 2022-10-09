FROM python:3.8

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 3111

CMD ["sh","-c","python init_db.py && python app.py"]