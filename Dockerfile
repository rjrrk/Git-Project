#this is nginx image
FROM ubuntu
RUN apt update
RUN apt install nginx -y
CMD ["echo","image is created successfully"]
