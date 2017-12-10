export HOMEBREW_NO_AUTO_UPDATE = 1

install-carthage:
	brew remove carthage --force || true
	brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/99f1f4fb87bfd047c7ccd43e58b46b8e44b63167/Formula/carthage.rb
install-%:
	true

test-iOS:
	set -o pipefail && \
		xcodebuild \
		-project Comprehension.xcodeproj \
		-scheme Comprehension \
		-configuration Release \
		-destination "name=iPhone 7,OS=10.1" \
		test

test-macOS:
	set -o pipefail && \
		xcodebuild \
		-project Comprehension.xcodeproj \
		-scheme Comprehension \
		-configuration Release \
		test

test-tvOS:
	set -o pipefail && \
		xcodebuild \
		-project Comprehension.xcodeproj \
		-scheme Comprehension \
		-configuration Release \
		-destination "name=Apple TV 1080p" \
		test

test-carthage:
	set -o pipefail && \
		carthage build \
		--no-skip-current \
		--configuration Release \
		--verbose
	ls Carthage/build/Mac/Comprehension.framework
	ls Carthage/build/iOS/Comprehension.framework
	ls Carthage/build/tvOS/Comprehension.framework
	ls Carthage/build/watchOS/Comprehension.framework

test-swiftpm-macOS:
	swift test

test: test-swiftpm-macOS
