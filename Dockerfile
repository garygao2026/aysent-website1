# AYSENT Dockerfile
FROM node:20-alpine AS builder

WORKDIR /app

# Frontend build
COPY src/package.json src/package-lock.json ./src/
RUN cd src && npm install
COPY src/ ./src/
RUN cd src && npm run build

# Backend build
COPY server/package.json server/package-lock.json ./server/
RUN cd server && npm install
COPY server/ ./server/
RUN cd server && npm run build

# Production image
FROM node:20-alpine
WORKDIR /app

COPY --from=builder /app/server/dist ./server/dist
COPY --from=builder /app/server/node_modules ./server/node_modules
COPY --from=builder /app/src/dist ./src/dist
COPY --from=builder /app/server/package.json ./server/

EXPOSE 9000
CMD ["node", "server/dist/index.js"]
