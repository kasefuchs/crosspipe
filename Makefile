# Dart entry point.
BUILD_TARGET = ./bin/crosspipe.dart
# Output binary directory
OUTPUT_DIRECTORY = ./build
# Output binary name
OUTPUT_BINARY_NAME = crosspipe

# Add .exe postfix to binary name when building on Windows
ifeq ($(OS),Windows_NT)
	OUTPUT_BINARY_NAME := $(OUTPUT_BINARY_NAME).exe
endif

# Compile application from source
all: install generate build-binary

# Install dependencies
install: install-dart install-npm

# Generate everything
generate: generate-prisma generate-schemas

# Build the binary
build-binary:
	@echo "Building CrossPipe binary..."
	dart compile exe --output $(OUTPUT_DIRECTORY)/$(OUTPUT_BINARY_NAME) $(BUILD_TARGET)

# Build the Docker image
build-docker:
	@echo "Building Docker image..."
	docker build --tag crosspipe/server:latest .

# Generate Prisma client
generate-prisma:
	@echo "Generating Prisma client..."
	npx prisma generate

# Generate JSON schemas
generate-schemas:
	@echo "Generating JSON schemas..."
	dart run build_runner build --delete-conflicting-outputs

# Install Dart dependencies
install-dart:
	@echo "Installing Dart dependencies..."
	dart pub get

# Install NPM dependencies
install-npm:
	@echo "Installing NPM dependencies..."
	npm ci

