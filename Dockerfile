FROM python:3.8.9
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["flask","run","--host","0.0.0.0"]