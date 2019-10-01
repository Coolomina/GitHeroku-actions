FROM node:12.10.0-stretch-slim
RUN npm install -g json-server@0.15.1
COPY dumb.json /server/
ENV PORT 3000

CMD ["sh", "-c", "json-server /server/dumb.json --host 0.0.0.0 --port $PORT"]