FROM node as builder
WORKDIR /tmp/
COPY . .
RUN npm --registry=https://registry.npm.taobao.org i && npm run build

FROM node
WORKDIR /tmp/
COPY --from=builder /tmp/.nuxt ./.nuxt
COPY --from=builder /tmp/static ./static
COPY --from=builder /tmp/package.json .
COPY --from=builder /tmp/nuxt.config.js .
COPY --from=builder /tmp/server ./server
RUN npm --registry=https://registry.npm.taobao.org i -production
CMD [ "npm", "start" ]
