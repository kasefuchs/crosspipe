OUT_DIR = ./build
BUILD_TARGET = ./bin/crosspipe.dart
BINARY_NAME = crosspipe

ifeq ($(OS),Windows_NT)
	BINARY_NAME := $(BINARY_NAME).exe
endif

# Generate schemas
generate-schemas:
	npx prisma generate
	dart run build_runner build --delete-conflicting-outputs

# Build the binary
build-binary:
	dart compile exe --output $(OUT_DIR)/$(BINARY_NAME) $(BUILD_TARGET)

# Build the Docker image
build-docker:
	docker build --tag crosspipe/server:latest .