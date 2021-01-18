from node:14.15.4-slim

# Create app directory
WORKDIR /opt/hsl-playground
ADD . /opt/hsl-playground

# global install & update
RUN npm i -g npm && \
    npm install && \
    npm run build && \
    npm run generate

ENV HOST 0.0.0.0
EXPOSE 3000

# start command
CMD [ "npm", "run", "start" ]
