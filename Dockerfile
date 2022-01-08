# WSGI service environment

FROM sourcepole/qwc-uwsgi-base:alpine-v2022.01.08

# Required for psychopg, --> https://github.com/psycopg/psycopg2/issues/684
RUN apk add --no-cache --update postgresql-dev git gcc python3-dev musl-dev

ADD . /srv/qwc_service
RUN pip3 install --no-cache-dir -r /srv/qwc_service/requirements.txt
