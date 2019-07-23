FROM node as builder
WORKDIR /tmp/
COPY . .
RUN npm i && npm run build

FROM node
WORKDIR /tmp/
COPY --from=builder /tmp/.nuxt .
COPY --from=builder /tmp/static .
COPY --from=builder /tmp/package.json .
COPY --from=builder /tmp/nuxt.config.js .
COPY --from=builder /tmp/server .
RUN npm i -production
CMD [ "npm", "start" ]
