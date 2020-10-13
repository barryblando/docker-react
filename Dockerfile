# Build Stage 1
FROM node:alpine as builder

WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .

RUN npm run build

# Production Stage 2 - NGINX Web Server 
# Will automatically dump previous stage build snapshots

FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

# no start command, nginx will automatically start once build completes