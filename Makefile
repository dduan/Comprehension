export HOMEBREW_NO_AUTO_UPDATE = 1
export SWIFTENV_ROOT := $(HOME)/.swiftenv
export PATH := $(SWIFTENV_ROOT)/bin:$(SWIFTENV_ROOT)/shims:$(PATH)

install-carthage:
	brew remove carthage --force || true
	brew install carthage

install-swiftpm-linux:
	git clone --depth 1 https://github.com/kylef/swiftenv.git ~/.swiftenv
	swiftenv install -s

install-%:
	true

test-iOS:
	set -o pipefail && \
		xcodebuild \
		-project Comprehension.xcodeproj \
		-scheme Comprehension \
		-configuration Release \
		-destination "name=iPhone X,OS=12.0" \
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
		-destination "platform=tvOS Simulator,name=Apple TV,OS=12.0" \
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

test-swiftpm-linux:
	swift test
