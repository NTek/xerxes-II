FROM gcc:latest
COPY . /usr/src/xerxes-II
WORKDIR /usr/src/xerxes-II
RUN chmod +x entrypoint-to-hell.sh
RUN gcc -o xerxes-II xerxes-II.c
ENV IP=""
ENV PORT=""
ENTRYPOINT ["./entrypoint-to-hell.sh"]
