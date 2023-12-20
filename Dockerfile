FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine
RUN apk --update add bash nano
ENV STATIC_URL /static 
ENV STATIC_PATH /home/lwilson/repos/Python/SMVAH/app/static
COPY ./requirements.txt /home/lwilson/repos/Python/SMVAH/requirements.txt
RUN pip install -r /home/lwilson/repos/Python/SMVAH/requirements.txt