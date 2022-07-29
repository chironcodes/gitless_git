FROM python:3.8-slim

WORKDIR gitless

COPY .credentials /root/.credentials
COPY build-me.sh ./
COPY app.py ./
COPY requirements.txt ./

RUN pip install -r requirements.txt

RUN chmod 400 /root/.credentials

RUN apt update \
 && apt install -y cifs-utils

RUN chmod +x ./build-me.sh


EXPOSE 8501

ENTRYPOINT ["sh","-c","./build-me.sh"]



# docker build -t poc . && docker run -it --privileged --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH --cap-add=NET_ADMIN poc sh