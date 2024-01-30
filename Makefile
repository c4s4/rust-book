include ~/.make/_clean.mk
include ~/.make/_color.mk
include ~/.make/_help.mk

BUILD_DIR = build

.DEFAULT_GOAL = build

build: # Build Rust binaries
	$(title)
	@mkdir $(BUILD_DIR)
	@rustc -o $(BUILD_DIR)/hello_world 1/2/hello_world/main.rs
