# Phase I - Builder source
FROM python:3.7 as builder
# PYTHONUNBUFFERED Force logging to stdout / stderr not to be buffered into ram  
ENV PYTHONUNBUFFERED=1 
WORKDIR /usr/src/app/exec
RUN echo DOWNLOADING CONSUL CLI
RUN curl -o ./consul.zip  -O -J -L https://releases.hashicorp.com/consul/1.6.2/consul_1.6.2_linux_amd64.zip 
RUN unzip ./consul.zip -d ./exec/
WORKDIR /usr/src/app
COPY application/ ./
# PIP Will create an archive of our libraries so we don't need to download them again
# argument - wheel
WORKDIR /wheels
COPY application/requirements.txt .
RUN pip wheel -r ./requirements.txt 

# Lints Code
# Phase II
FROM eeacms/pylint:latest as linting
WORKDIR /code
COPY --from=builder /usr/src/app/pylint.cfg /etc/pylint.cfg
COPY --from=builder /usr/src/app/*.py ./

RUN ["/docker-entrypoint.sh", "pylint"]

# Phase III Running Sonarqube scanner (Sonarqube server also required)
FROM newtmitch/sonar-scanner as sonarqube
WORKDIR /usr/src
COPY --from=builder /usr/src/app/*.py ./
RUN sonar-scanner -Dsonar.projectBaseDir=/usr/src

# Starts and Serves Web Page
# Phase VI
FROM python:3.7-alpine3.9 as serve
WORKDIR /usr/src/app
EXPOSE 8000
# Copy all packages instead of rerunning pip install
RUN apk add curl
COPY --from=builder /wheels /wheels
RUN     pip install -r /wheels/requirements.txt \
                      -f /wheels \
       && rm -rf /wheels \
       && rm -rf /root/.cache/pip/* 

COPY --from=builder /usr/src/app/*.py ./
COPY --from=builder /usr/src/app/exec/* /usr/bin/
ENTRYPOINT ["entry-point.sh"]
CMD ["python3", "./server.py"]
