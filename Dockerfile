FROM python:3.9-buster

RUN pip install fastapi uvicorn[standard]

COPY main.py

EXPOSE 8000

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]