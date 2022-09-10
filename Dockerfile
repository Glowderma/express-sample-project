FROM node:16.16

#Specify a working directory
WORKDIR /usr/app

#Copy the dependencies file
COPY ./package.json ./

#Install dependencies
RUN npm install 

#Copy remaining files
COPY ./ ./

RUN npm run lint

#Default command
CMD ["npm","start"]