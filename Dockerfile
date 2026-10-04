FROM python:3.11

WORKDIR /app

COPY requirments.txt

RUN pip install --no-cache-dir -r requirments.txt

COPY . .

CMD ["uvicorn","app:app","--host","0.0.0.0","--port","7860"]