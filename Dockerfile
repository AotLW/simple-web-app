FROM node:lts-alpine@sha256:b2da3316acdc2bec442190a1fe10dc094e7ba4121d029cb32075ff59bb27390a

COPY --chown=node:node . /opt/app

WORKDIR /opt/app/server

RUN npm i -f && \
#RUN chmod 775 -R ./node_modules/
    npm run build && \
    npm prune --production && \
    ls | grep -v dist | grep -v node_modules | grep -v package.json | grep -v package-lock.json | xargs rm -rfv && \
    chmod 775 -R ./node_modules/


ENV NODE_ENV production

EXPOSE 8000

USER node

CMD ["node", "./dist/bundle.js"]
