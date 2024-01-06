FROM python:3.10.8-slim-buster
RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /AUTOFILTER-VM-BOT
RUN pip install -U pip && pip install -U -r requirements.txt
WORKDIR /AUTOFILTER-VM-BOT

COPY . .
CMD ["python", "bot.py"]
