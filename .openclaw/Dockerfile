FROM node:22-slim

# Install git (required by openclaw's npm install)
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install OpenClaw globally
RUN npm install -g openclaw

# Set working directory
WORKDIR /app

# Create necessary directories
RUN mkdir -p /root/.openclaw /app/workspace

# Expose port (Railway sets $PORT)
ENV PORT=18789
EXPOSE $PORT

# Start OpenClaw gateway
CMD ["openclaw", "gateway", "start", "--no-daemon"]
