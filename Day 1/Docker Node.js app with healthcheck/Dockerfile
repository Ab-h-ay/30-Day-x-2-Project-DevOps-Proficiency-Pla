#Using offical node img
FROM node:18-alpine

#set working directory
WORKDIR /app

#Copy dependencies
COPY app/package.json
RUN npm install

# copy the app
COPY app/ /app/

#Exposing port 3000
EXPOSE 3000

#Healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
	CMD curl -f http://localhost:3000/health || exit 1

#Start the app
CMD ["npm","start"]