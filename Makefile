.PHONY: help clean build test format analyze bootstrap

help:
	@echo "Available commands:"
	@echo "  clean     - Clean build directories"
	@echo "  build     - Build all packages"
	@echo "  test      - Run all tests"
	@echo "  format    - Format all code"
	@echo "  analyze   - Analyze all code"
	@echo "  bootstrap - Bootstrap melos dependencies"

clean:
	flutter clean
	melos clean

build:
	melos run build

test:
	melos run test

format:
	dart format .

analyze:
	melos run analyze

bootstrap:
	melos bootstrap
