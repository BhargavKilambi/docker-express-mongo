# using alpine image for simplicity
FROM node:8-alpine
# assigning working dir
WORKDIR usr/src/app
# copying package.json & package-lock.json
COPY package*.json ./
# installing dependencies
RUN npm install
# copying all files - except node_modules (exempted through via .dockerignore) 
COPY . .
#exposing the endpoint
EXPOSE 8080
# running the command
CMD ["npm","start"]