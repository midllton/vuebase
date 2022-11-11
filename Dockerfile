FROM node:16.4.2 as build-stage

LABEL maintainer=bao

# 创建一个工作目录
WORKDIR /app

COPY . .

RUN yarn
RUN yarn build

# production stage
FROM nginx:stable-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
