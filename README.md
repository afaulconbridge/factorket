# Factorket 

Grow the factory by buying and selling on the open market.

## Introduction

Welcome to your new job as an employee! Hope the commute was good.

To build your factory you must _buy_ your machines - they're highly technical devices protected by patents, so you cannot build them yourself!

To earn money, you must _sell_ materials. The more materials you sell, the more coins you earn!

Coins are the galactic standard currency to defeat fraud and counterfeiting. It might make transactions cumbersome sometimes, but that's a small price to pay for a true economy.

## Player notes

This is an overhaul mod, intended for players who dislike combat and fiddle but want the power fantasy of a large base.

The main changes revolve around the introduction of a financing mechanism. Intermediate resources are sold for coins which are used to buy machines and science instead of building them. Machines are supersized and superpowered compared to vanilla and balanced around using loaders to process full belt(s) of materials with simplier ratios, and to do this within Factorio's limit of one recipe completion per tick many recipes are scaled up too. Belts are also tweaked to match and make the math easier.

It is intended to use map settings that disable combat and have larger scale patches. Using expensive and higher research cost is encouraged for more challenge.

Complimentary, but not required, mods include [RSO](https://mods.factorio.com/mods/orzelek/rso-mod) and [Autobuild](https://mods.factorio.com/mod/autobuild). Currently, Space Age is not supported and any non-trivial mods will probably not work well either.

### Future plans & ideas

Firstly the goal is to cover the entire factorio economy. Currently the focus is on the lower tiers to try to "find the fun" in the concept.

I would like the market to be more dynamic so that selling large quantities of materials lowers the coins per item - but with events that drive prices back up again later. This may be very difficult to do within the current recipe system however - other mods such as [Black Market 2](https://mods.factorio.com/mod/BlackMarket2) use a different UI system to manage trading which I would like to avoid having to write & maintain.

Having resources turned directly into coins feels artificial. I might be able to have a two-stage sale process - one where goods are packaged, and another where the packages goods are shipped via rocket launch.

Because machines are made from coins, the complexity of machine production goes away. Whilst this is the point, it might have gone too far so I am considering a system like [Ultracube](https://mods.factorio.com/mod/Ultracube) with a "two factor authentication" token that is needed by any machine to "spend" coins. Alternatively, the machines used to "sell" items could be highly restricted. Currently this is mitigated because players can't pick up coins as they are a fluid, and therefore can't directly buy machines or sell resources.

Modules and beacons have not been considered yet. With the 2.0 updated beacon overload mechanics I hope they are not entirely broken, but who knows!

Eventually, I'd like to scale the sale side more and the buy side to compensate. For example, having consumer goods (e.g. tables and chairs) that can be sold for high values but can only be made in higher tier machines - which are then made more expensive to buy and operate. Quality could also factor into this potentially, as well as spoil mechanics ("just in time" / trends maybe?). This could also reuse the military tech - become an arms dealer!

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

# Development notes

## Icon files
- Provided: `graphics/icons/coin.svg` (vector).
- Required by Factorio: `graphics/icons/coin.png` (raster, 64x64, icon_size = 64).

Convert the SVG to PNG with:

- ImageMagick:
```
magick convert -background none -resize 64x64 graphics/icons/coin.svg graphics/icons/coin.png
```