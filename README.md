# Factorket 

Grow the factory by buying and selling on the open market.

## Installation

To install this mod in your Steam Factorio installation:

1. **Locate your Factorio mods folder:**
   - **Linux**: `~/.factorio/mods/`
   - **Windows**: `C:\Users\<YourUsername>\AppData\Roaming\Factorio\mods\`
   - **macOS**: `~/Library/Application Support/factorio/mods/`

2. **Copy the mod folder:**
   - Copy the `factorket` directory (this entire folder) into your mods directory.
   - The folder structure should be: `mods/factorket/` containing `control.lua`, `info.json`, `graphics/`, etc.

3. **Restart Factorio** to activate the mod.

## Icon files
- Provided: `graphics/icons/coin.svg` (vector).
- Required by Factorio: `graphics/icons/coin.png` (raster, 64x64, icon_size = 64).

Convert the SVG to PNG with one of these commands:

- ImageMagick:
```
magick convert -background none -resize 64x64 graphics/icons/coin.svg graphics/icons/coin.png
```