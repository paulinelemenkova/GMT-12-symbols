# GMT Symbols — psxy Plotting Symbol Reference

GMT (Generic Mapping Tools) reference scripts that catalogue the plotting symbols available in the psxy module. Each symbol is drawn with a worked example and its required arguments, making the repository a practical cheat sheet for annotating maps and figures. An English-commented and a Russian-commented version are provided.

## Symbols demonstrated

Vectors / arrows (straight and math-angle arcs, with head and tail decorations), circles, diamonds, ellipses, horizontal and vertical bars, five- and multi-pointed stars, triangles, squares, pie wedges, diagonal crosses, vertical dashes, letter / text symbols, hexagons, pentagons, and rotated rectangles, including symbols that extend beyond the map frame (-N).

## What the scripts do

- plot each symbol type with psxy using its specific symbol code (-S...) and inline coordinate/size arguments
- illustrate fill (-G), pen (-W) and rotation options per symbol
- assemble all symbols on a single plain XY canvas
- export to raster (psconvert) at high resolution

## Files

- GMT-12-symbols.sh: full symbol catalogue (English comments)
- GMT-12-symbols_RUS.sh: symbol catalogue (Russian comments)

## Requirements

- GMT 6.x (Generic Mapping Tools): https://www.generic-mapping-tools.org
- A POSIX shell (bash/sh)

## Usage

Run directly (no external data needed):

    bash GMT-12-symbols.sh

The script writes a PostScript file and converts it to a raster image (JPG/PNG) via psconvert.

## Author

Polina Lemenkova
ORCID: https://orcid.org/0000-0002-5759-1089

These reference scripts support the symbology used in the author's cartographic and geoscientific figures. The full publication list is available via the ORCID record above.

## License

See the LICENSE file in this repository.
