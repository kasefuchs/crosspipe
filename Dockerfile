FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .
RUN dart pub get --offline
RUN dart compile exe bin/crosspipe.dart -o bin/crosspipe

FROM scratch

WORKDIR /app

COPY --from=build /runtime/ /
COPY --from=build /app/bin/crosspipe .

CMD ["/app/crosspipe", "start"]