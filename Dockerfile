FROM python:3.12
ENV flask=/myapp
COPY requiremant.txt . 
RUN pip install -r requiremant.txt flask
COPY . .
WORKDIR $flask
CMD [ "python", "app.py" ]