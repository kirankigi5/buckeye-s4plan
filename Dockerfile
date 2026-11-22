# The match runs this with no network, a read-only root (writable /tmp), 1 CPU, 512 MB, and the map at /arena.
FROM oven/bun:1.4.4-slim
WORKDIR /bot
ENV MF_ARC=1
ENV MF_PLAN=1
COPY . .
ENTRYPOINT ["bun", "/bot/bot.ts"]
