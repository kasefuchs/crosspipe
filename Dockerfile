FROM dart:stable AS builder

# Install Node.js & make
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs make

# Copy sources
WORKDIR /app
COPY . .

# Build application executable
RUN make

FROM alpine:latest

# Copy runtime dependencies
COPY --from=builder /runtime/ /
COPY --from=odroe/prisma-dart:latest / /

WORKDIR /bin

# Copy application executable
COPY --from=builder /app/build/crosspipe .

# Copy Prisma Engine
COPY --from=builder /app/node_modules/prisma/query-engine-* .

CMD ["crosspipe", "start", "-c", "/config.yaml"]