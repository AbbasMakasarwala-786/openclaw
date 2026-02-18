FROM node:22-slim

# Install OpenClaw globally
RUN npm install -g openclaw

# Create workspace directory
WORKDIR /app

# Copy workspace files
COPY workspace/ /app/workspace/

# Create .openclaw directory for config
RUN mkdir -p /root/.openclaw

# Expose port (Railway sets $PORT)
ENV PORT=18789
EXPOSE $PORT

# Start OpenClaw gateway
CMD ["openclaw", "gateway", "start"]
