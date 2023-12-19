FROM node:16-alpine 
WORKDIR /app 
COPY package*.json ./ 
RUN npm install 
ENV PATH /app/node_modules/.bin:$PATH 
COPY . . 
EXPOSE 1880
CMD ["node","index.js"]
