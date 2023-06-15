FROM dart:stable AS build

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs make

# Copy sources
WORKDIR /app
COPY . .

# Install depedencies
RUN dart pub get
RUN npm install

# Generate schemas
RUN make generate-schemas

# Compile binary
RUN make build-binary

FROM scratch

WORKDIR /bin

COPY --from=build /runtime/ /
COPY --from=build /app/build/crosspipe .

CMD ["crosspipe", "start", "-c", "/app/config.yaml"]