PRODUCT_NAME := Karazhan
PROJ_NAME := $(PRODUCT_NAME).xcodeproj
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace

BUNDLE=$(if $(rbenv > /dev/null), rbenv exec bundle, bundle)
FASTLANE=$(BUNDLE) exec fastlane

.PHONY: help
help: # Show this command list
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'

.PHONY: setup-homebrew
setup-homebrew: # Setup Homebrew on the machine
	brew update
	brew upgrade
	brew cleanup

.PHONY: install-rbenv
install-rbenv: # Install rbenv on the project folder
	brew install rbenv

.PHONY: setup-rbenv
setup-rbenv: # Setup rbenv on the project folder
	rbenv install -s
	rbenv exec gem install bundler
