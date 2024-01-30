include ~/.make/_clean.mk
include ~/.make/_color.mk
include ~/.make/_help.mk

BUILD_DIR = build
EXAMPLE = hello_world

.DEFAULT_GOAL = run
.PHONY: build run

build: # Build Rust binaries
	$(title)
	@mkdir -p $(BUILD_DIR)
	@rustc -o $(BUILD_DIR)/$(EXAMPLE) */*/$(EXAMPLE)/main.rs

run: clean build # Run Rust binaries
	$(title)
	@$(BUILD_DIR)/$(EXAMPLE)
