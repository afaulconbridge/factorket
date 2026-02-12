MOD_NAME := $(shell grep '"name"' info.json | head -1 | sed 's/.*"name"[^"]*"\([^"]*\)".*/\1/')
VERSION := $(shell grep '"version"' info.json | sed 's/.*"version"[^"]*"\([^"]*\)".*/\1/')
OUT := $(MOD_NAME)_$(VERSION).zip

.PHONY: all
all: build

.PHONY: render-icons
render-icons:
	@echo "Rendering SVG icons to PNG..."
	@for svg in graphics/icons/*.svg; do \
		png="$${svg%.svg}.png"; \
		echo "Converting $$svg -> $$png"; \
		convert -background none -resize 64x64 "$$svg" "$$png"; \
	done
	@echo "Icon rendering complete"

.PHONY: build
build: render-icons
	@echo "Building $(OUT)"
	@zip -r $(OUT) info.json data.lua control.lua prototypes locale graphics README.md LICENSE >/dev/null || true
	@echo "Built $(OUT)"

.PHONY: clean
clean:
	@rm -f $(OUT)
	@rm -f graphics/icons/*.png
	@echo "Cleaned"