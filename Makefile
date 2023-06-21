# Dart entry point.
BUILD_TARGET = ./bin/crosspipe.dart
# Output binary directory
OUTPUT_DIRECTORY = ./build
# Output binary name
OUTPUT_BINARY_NAME = crosspipe

# Add .exe postfix to binary name when building on Windows
ifeq ($(OS),Windows_NT)
	BINARY_NAME := $(BINARY_NAME).exe
endif

# Build the binary
build-binary:
	dart compile exe --output $(OUTPUT_DIRECTORY)/$(OUTPUT_BINARY_NAME) $(BUILD_TARGET)

# Build the Docker image
build-docker:
	docker build --tag crosspipe/server:latest .

# Generate schemas
generate-schemas:
	npx prisma generate
	dart run build_runner build --delete-conflicting-outputs
