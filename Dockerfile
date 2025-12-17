# base image
#python version
FROM python:3.9-slim


#workdir
WORKDIR /app

#copy
COPY . /app
COPY requirements.text . 

#run
RUN pip install --no-cache-dir -r requirements.txt

#copy rest of the files
COPY . .

#port
EXPOSE 5000

#command
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

