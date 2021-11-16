FROM node:14.18.1-alpine 
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app 
RUN mkdir data
COPY package*.json .
RUN npm install 
COPY . .
ENV API_URL=http://wws.com/
EXPOSE 3000
CMD ["npm", "start"]