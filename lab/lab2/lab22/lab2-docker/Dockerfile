FROM node:16.20.1-alpine as  builder

WORKDIR /app
COPY . /app/
RUN npm install
RUN npm run build


FROM builder as dev-runner
CMD npm run serve


FROM nginx as runner
COPY --from=builder /app/dist /usr/share/nginx/html

