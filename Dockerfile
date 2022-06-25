FROM  python:3.8.5

ARG PYTHON_MAIN_FILE

RUN mkdir /app

WORKDIR /app

COPY ./requirements.txt /app

COPY ${PYTHON_MAIN_FILE} /app/main.py

RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 5000 available to the world outside this container.
EXPOSE 5000

# Run main.py when the container launches.
ENTRYPOINT ["python", "main.py"]



