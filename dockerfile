FROM ubuntu:18.04
MAINTAINER nixonanacona.saulfigueroa <nianacona@itp.edu.co>
RUN apt-get update && apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y git
RUN git clone https://github.com/jeison130/upload-images.git
RUN pip3 install -r ./upload-images/apiFileUpload/requirements.txt
CMD python ./upload-images/apiFileUpload/manage.py
EXPOSE 8183
COPY . .
