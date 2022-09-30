PRODUCT_NAME := Karazhan
PROJ_NAME := $(PRODUCT_NAME).xcodeproj
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace

BUNDLE=$(if $(rbenv > /dev/null), rbenv exec bundle, bundle)
FASTLANE=$(BUNDLE) exec fastlane

.PHONY: help
help: # Show this command list
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'
