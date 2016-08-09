// 文件名：Dockerfile
// 运行命令:docker build -t hello-world .
// 运行命令:docker run -d -p 8088:8088 hello-world
FROM ubuntu:14.04
MAINTAINER king1016@126.com
COPY sources.list /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get install -y python-software-properties software-properties-common  
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update -y
RUN apt-get install -y nodejs
ADD server.js /app/server.js
RUN ls -lth /app
EXPOSE 8088
CMD cd /app && node server.js
