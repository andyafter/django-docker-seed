
FROM python:3.5
ENV PYTHONUNBUFFERED 1

# Requirements have to be pulled and installed here, otherwise caching won't work
ADD ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

EXPOSE 80

ENV NAME PlentI

CMD ["python", "manage.py", "runserver"]
