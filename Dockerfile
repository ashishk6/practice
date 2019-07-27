FROM python

RUN pip3 install flask
RUN apt-get install update

COPY helloworld.py /
EXPOSE 5000
ENTRYPOINT ["python3"]	

CMD ["helloworld.py"]


