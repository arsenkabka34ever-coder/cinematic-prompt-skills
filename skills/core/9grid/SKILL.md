# SKILL: 9grid
# Category: core
# Trigger: any 3x3 cinematic grid output

## Output Format
- type: single_composite_image
- layout: 3x3 cinematic grid
- aspect_ratio: IMAX 1.43:1 per frame (or 2.39:1 anamorphic)
- spacing: minimal
- borders: none
- labels: false

## Tile Uniqueness
- no duplicate frames
- each tile must differ by at least 2 of: framing, angle, pose, light motif, subject scale
- unique_token required per tile

## Shot Class System
- WIDE/MEDIUM: establish space, subject readable, atmosphere visible
- PORTRAIT: identity locked, both eyes readable, bokeh controlled
- DETAIL/MACRO: texture priority, background optional

## Lens Kit (default)
- wide_prime: 24mm (establishing, landscape, action)
- portrait_bokeh: Helios 44-2 58mm (portraits, intimate)
- macro: 100mm (details, materials, weapons)

## Premium Lens Kit (epic/journey)
- ARRI Master Prime 24mm T1.3
- Panavision Primo Artiste 65mm
- ARRI Macro Prime 100mm
- Panavision Primo 85mm

## Depth Mandate
Every frame must show 3 planes:
- foreground: blur or crisp element close to lens
- midground: subject sharp
- background: separated via bokeh or atmospheric perspective

## Continuity Rules
- identical color grade logic across all 9 frames
- no style drift between tiles
- character identity consistent in every tile
- props consistent (no cloning, no duplication)

## Hard Fail
- duplicate or near-duplicate tiles
- subject missing in wide/medium tiles
- single-plane backgrounds
- no depth cues
