#specify base image
FROM node:alpine

#create direcotry app 
WORKDIR /usr/app
#copy files from ./current directory to current working directory inside the container

COPY ./package.json /usr/app
#install dependancies
RUN npm install

COPY ./ /usr/app/

#defualt command 
CMD ["npm", "start"]
 