FROM node:latest 
# COPY index.js /home/app/index.js
# COPY package.json /home/app/
# Cant copy the files by runing one by one, so we use the following command
COPY . /home/app/
WORKDIR /home/app/
RUN npm install
EXPOSE 3000
cmd ["node", "index.js"]