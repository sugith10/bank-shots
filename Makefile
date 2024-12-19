bootstrap:
	@echo ""
	@echo "🚀 Bootstrapping Bank Shot Flutter project..."
	@echo "----------------------------------------"
	@melos bootstrap
	@echo ""
	@echo "📦 Generating files..."
	@echo ""
	@echo "------------------------------"
	@echo "🚀 Bootstrapping completed! 🚀🚀🚀"


clean:
	@echo "🧹 Cleaning pub, package links, generated files..."
	@echo "----------------------------------------"
	@melos clean_generated
	@melos clean
	@echo "🚀 Cleaning completed! 🚀🚀🚀"

cleanAll:
	@echo "🧹 Cleaning pub, package links, generated files, and destroy fvm cache..."
	@echo "----------------------------------------"
	@melos clean_generated
	@melos clean
	@fvm destroy
	@echo "🚀 Cleaning completed! 🚀🚀🚀"

reinstall:
	@echo "📦 Reinstalling development environment..."
	@echo "----------------------------------------"
	@melos clean_generated
	@melos clean
	@dart pub global deactivate melos
	@yes | fvm destroy
	@fvm install
	@fvm doctor
	@dart pub global activate melos
	@melos bootstrap
	@melos generate_all
	@echo "🚀 Reinstalling completed! 🚀🚀🚀"

format:
	@echo "🧹 Formatting files..."
	@melos exec -c 5 --fail-fast --order-dependents -- "dart format . --set-exit-if-changed"
	@echo "🚀 Formatting completed! 🚀🚀🚀"

generate:
	@echo "📦 Generating files..."
	@melos exec -c 3 --fail-fast --order-dependents --depends-on="build_runner" -- "dart run build_runner build --delete-conflicting-outputs"
	@echo "🚀 Generation completed! 🚀🚀🚀"

test:
	@echo "🧪 Running tests..."
	@melos exec -c 1 --fail-fast --order-dependents -- "flutter test"
	@echo "🚀 Tests completed! 🚀🚀🚀"

digraph:
	@melos list --gviz

danger:
	@yarn danger ci
