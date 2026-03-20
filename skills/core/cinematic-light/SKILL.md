# SKILL: cinematic-light
# Category: core
# Trigger: any cinematic image generation

## Philosophy
Light is physical information, not decoration. Every pixel must justify its luminance.

## Global Exposure Model
- base_exposure: calibrated for skin highlight retention, not sky
- latitude: film-like, highlight-protected, shadow-rich
- RULE: never lift shadows globally; separation via directional light only

## Pixel Energy Distribution
- sun_break: high-energy narrow-band warmth, rapid rise + long gentle rolloff. FORBIDDEN: white clipping, flat yellow wash
- sky/cloud: cool, desaturated, information-dense. NEVER exceeds subject highlight values
- ground/fabric: mid-energy, high-frequency texture. No plastic smooth zones

## Edge Logic
- rim_light: 1–3px wide, NEVER brighter than key highlight on face, warm edge against cool field only
- FORBIDDEN: thick outlines, neon separation, uniform edge brightness

## Depth by Value (not blur)
- foreground: full dynamic range, maximum micro-frequency
- midground: compressed 10–15%, softened by atmosphere
- background: compressed 25–40%, silhouettes preserved

## Skin Pixel Rules
- speculars: irregular, broken, never mirror-like. Placed on cheekbone ridge, nose bridge, brow
- subsurface: visible, muted warm, never pink. No waxy diffusion

## Metal Response
- highlights: elongated directional streaks, fast rolloff to midtone
- micro-reflections: soft, distorted by wear. FORBIDDEN: perfect environment mirrors

## Fire / Ember
- highest local luminance in night frames
- amber core → red edge falloff
- casts micro flicker on nearby skin and fabric. NEVER illuminates background evenly

## Grain
- acts as light carrier, not defect
- more visible in lifted shadows, dances subtly in highlights
- FORBIDDEN: uniform noise pattern, digital chroma speckle

## Prohibitions
- AI-style glow blooms
- HDR halo artifacts
- global clarity filters
- uniform shadow lifting

## Validation
- 100%: skin and fabric remain tactile
- 200%: no banding or posterization
- 400%: grain organic, not tiled
- squint test: subject separation readable when detail collapses
- failure action: reduce effect, never add light
