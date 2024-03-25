FROM python:3.11

RUN mkdir /tado
WORKDIR /tado
COPY --chmod=765 . ./ 
RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

RUN './install.sh'


CMD ["python", "-u", "tado_aa.py"]