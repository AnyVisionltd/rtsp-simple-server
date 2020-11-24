from ubuntu:18.04

USER 0

RUN apt update && apt install ffmpeg -y

# Assuming you have the compiled binary
COPY ./rtsp-simple-server /usr/bin/rtsp-simple-server

COPY ./rtsp-simple-server.yml /etc/simple_rtsp_server.yaml

RUN chmod +x /usr/bin/rtsp-simple-server

CMD ["/usr/bin/rtsp-simple-server","/etc/simple_rtsp_server.yaml"]
