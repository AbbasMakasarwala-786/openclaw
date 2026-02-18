FROM node:22-slim

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
RUN npm install -g openclaw

WORKDIR /app
RUN mkdir -p /root/.openclaw /app/workspace

ENV PORT=18789
EXPOSE $PORT

CMD ["sh", "-c", "curl -s -o /dev/null -w '%{http_code}' -H 'Authorization: Bearer $OLLAMA_API_KEY' https://ollama.com/api/tags && openclaw gateway start"]
