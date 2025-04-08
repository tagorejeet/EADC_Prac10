FROM python:3.8-alpine 
COPY ./requirements.txt /jeet/requirements.txt 
WORKDIR /jeet
RUN pip install -r requirements.txt 
COPY . /jeet 
ENTRYPOINT [ "python" ] 
CMD ["view.py" ] 