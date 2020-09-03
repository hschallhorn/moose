FROM actionhero/actionhero:v23.0.8
ADD ./ /actionhero
RUN apk add redis
RUN npm run build
CMD redis-server --daemonize yes && \
   npm start
EXPOSE 8080
