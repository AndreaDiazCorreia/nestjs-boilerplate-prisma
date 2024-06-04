# Stage 1: Build the application
FROM node:16-alpine as builder

WORKDIR /app

# Copy package.json and package-lock.json (or pnpm-lock.yaml if you use pnpm)
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN npm install -g pnpm && pnpm install

# Copy the rest of your application code
COPY . .

# Build the application
RUN pnpm run build

# Stage 2: Setup production image
FROM node:16-alpine

WORKDIR /app

# Copy built assets from the builder stage
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "dist/main"]