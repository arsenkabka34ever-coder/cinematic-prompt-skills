# SKILL: identity-transfer
# Category: utility
# Trigger: face swap, composite portrait

## Inputs
- IMAGE_1: source portrait (identity)
- IMAGE_2: target image (geometry template)

## Rules
1. Replace ONLY face area with person from IMAGE_1
2. KEEP target head size, skull silhouette, head position
3. Target = geometry template, do not change
4. Fit source via landmark alignment

## Landmark Anchors
inner_eyes, outer_eyes, nose_bridge, nostrils, mouth_corners, chin_tip, jawline

## Wardrobe Override (default)
- black formal suit/tuxedo
- black satin bow tie, centered
- white dress shirt

## SD Parameters
- steps: 38 | cfg: 5.1 | strength: 0.62
- sampler: dpmpp_2m
- identity_strength: 0.86 | blend_strength: 0.82

## Forbidden
- wrong head size, warped skull, floating face
- mask seam, halo edges, mismatched lighting
