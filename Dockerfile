FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /home/plenti

# Requirements have to be pulled and installed here, otherwise caching won't work
ADD ./requirements.txt /home/requirements.txt
ADD ./plenti /home/plenti

WORKDIR /home/plenti

RUN pip install -r ../requirements.txt

EXPOSE 80

ENV NAME PlentI

