FROM node:22-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN npm install -g openclaw

WORKDIR /app
RUN mkdir -p /root/.openclaw /app/workspace

# Copy pre-baked config so openclaw doesn't need interactive onboarding
COPY openclaw.json /root/.openclaw/openclaw.json

ENV PORT=18789
EXPOSE $PORT

CMD ["openclaw", "gateway", "start", "--allow-unconfigured"]
