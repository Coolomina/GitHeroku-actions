FROM node:12.10.0-stretch-slim
RUN npm install -g json-server@0.15.1
COPY dumb.json cmd.sh /server/
ENV PORT 3000

CMD ["/server/cmd.sh"]