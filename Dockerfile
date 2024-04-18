FROM node:12-alpine
RUN apk add --no-ccache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production 
CMD ["node","src/index.js"]
EXPOSE 3000
