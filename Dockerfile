FROM node

WORKDIR /tmp/node
ADD package.json yarn.lock ./
RUN yarn install --frozen-lockfile --ignore-platform --ignore-engines --quiet

RUN yarn global add node-sass

WORKDIR /app
ADD . /app/
RUN mv /tmp/node/* ./
