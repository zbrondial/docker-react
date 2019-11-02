# Build Phase
FROM node:alpine as builder
WORKDIR '/app'
COPY ./package.json ./
RUN npm config set registry https://registry.npmjs.org/
RUN npm install
COPY ./ ./
RUN npm run build


# Run Phase

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
#no need to specify command to start nginx, it is started automatically
