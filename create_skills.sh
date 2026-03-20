#!/bin/bash

# character-turnaround
cat > /home/claude/prompt-skill-repo/skills/structure/character-turnaround/SKILL.md << 'EOF'
# SKILL: character-turnaround
# Category: structure
# Trigger: character reference sheet, model sheet, turnaround

## Standard Version (5 views)
Top row: front view | left profile | back view
Bottom row: front portrait | left profile portrait

## Extended Version (8 views)
front | front_45_left | left_profile | back_45_left | back | back_45_right | right_profile | front_45_right

## Rules
- neutral gray or white background
- A-pose relaxed, no dramatic poses
- camera rotates, character does not move
- orthographic projection, 50mm equivalent
- consistent scale and alignment between all views
- accurate anatomy, clear silhouette
- uniform framing, consistent head height across full-body lineup

## Lighting
- flat studio lighting
- soft shadows
- low contrast
- purpose: maximum form readability, no mood

## Output Quality
- 6K resolution
- photoreal skin texture
- fabric texture clearly readable
- neutral color grading, no stylization

## Intended Use
- character bible
- story continuity
- future scene generation
- identity reference for other skills
EOF

# storyboard-contact-sheet
cat > /home/claude/prompt-skill-repo/skills/structure/storyboard-contact-sheet/SKILL.md << 'EOF'
# SKILL: storyboard-contact-sheet
# Category: structure
# Trigger: contact sheet, shot list, camera angles from reference

## Standard Version (1 reference)
Input: IMAGE_1 = reference
Output: 9 panels A1-C3, same subject, only camera angle changes

## Row A — Spatial Context
- A1: Extreme Wide Shot, High-Angle Bird's Eye
- A2: Full Shot, Eye-Level Neutral
- A3: Wide Shot, Dramatic Low-Angle Worm's Eye

## Row B — Character & Dynamics
- B1: Medium Shot, Dutch Angle
- B2: Medium Close-Up, Eye-Level Portrait
- B3: Three-Quarter Back Shot

## Row C — Intimacy & Detail
- C1: Close-Up, Low-Angle Hero
- C2: High-Angle Medium Shot
- C3: Extreme Close-Up Detail Insert

## Dual-Reference Version (2 references + scene input)
- IMAGE_1: main hero identity
- IMAGE_2: character shot sheet (3x3 grid)
- USER_SCENE_INPUT: brief scene description → AI elaborates fully

## Constraints
- absolute visual consistency with reference across all panels
- environment, time of day, costume NEVER changes
- only variables: camera angle, framing, shot size
- panels labeled A1–C3 top-left corner
EOF

# narrative-pressure
cat > /home/claude/prompt-skill-repo/skills/structure/narrative-pressure/SKILL.md << 'EOF'
# SKILL: narrative-pressure
# Category: structure
# Trigger: emotional story arc, 3-act structure, survival/thriller

## Visual DNA
- genre: Psychological Thriller / Survival
- film_stock: Kodak Vision3 500T (grainy, high contrast)
- aspect_ratio: Anamorphic 2.35:1
- color_grade: Bleach Bypass (desaturated, harsh shadows, cold tones)

## Narrative Arc
- ACT_1: THE_FEAR — tension, sweat, hesitation
- ACT_2: THE_VIOLENCE — impact, chaos, sensory overload
- ACT_3: THE_VOID — silence, isolation, alien world

## Camera Philosophy
The camera is an active participant in the trauma.
Every shot must serve the emotional narrative, not just look cool.

## Shot Pattern
- ACT_1: macro anxiety → POV abyss → commitment low angle
- ACT_2: crash cam impact → underwater chaos → struggle
- ACT_3: silence wide → trapped looking up → empty aftermath

## Director Rule
The environment is not a friend. It is a prison.
Ambiguous endings preferred.
EOF

# skin-realism
cat > /home/claude/prompt-skill-repo/skills/utils/skin-realism/SKILL.md << 'EOF'
# SKILL: skin-realism
# Category: utility
# Trigger: portrait enhancement, skin detail, realism upgrade

## Apply These
- visible pores and skin texture
- small natural imperfections
- micro-details
- subtle light reflection, shine in eyes with natural moisture (not tears)
- flyaway hairs, baby hairs catching light, stray strands at hairline
- subsurface scattering, light glowing through skin edges
- organic texture, ultra-realistic photo-quality finish

## Preserve
- all facial features and expressions
- natural texture — no over-smoothing
- identity — no face changes

## Forbidden
- plastic skin
- beauty filter smoothing
- digital glow
- fake moisture/tears
- uniform skin tone (no micro-variation)
EOF

# reference-style-match
cat > /home/claude/prompt-skill-repo/skills/utils/reference-style-match/SKILL.md << 'EOF'
# SKILL: reference-style-match
# Category: utility
# Trigger: "match the style of", "same cinematography as", reference image provided

## Inputs
- IMAGE_1: your content (subject, scene)
- IMAGE_2: style reference (photo you want to match)

## Extract From Reference
- composition: framing, subject placement, depth layers
- lighting: direction, quality, contrast, color temperature
- color grade: palette, saturation, tonal style
- atmosphere: depth of field, haze, texture, grain

## Apply To Content
- same DP, same colorist, same visual language as reference
- do NOT recreate the reference — use as style template only

## Light Physics Override (always active)
- highlight rolloff: organic film shoulder, no clipping
- shadow: never lifted globally, separation by direction only
- subject zone: +0.5 to +1.2 stops vs environment
- no HDR halos, no AI glow, no beauty smoothing
EOF

# pose-transfer
cat > /home/claude/prompt-skill-repo/skills/utils/pose-transfer/SKILL.md << 'EOF'
# SKILL: pose-transfer
# Category: utility
# Trigger: transfer pose, match body position, character in new pose

## Inputs
- IMAGE_1: CHARACTER — face, skin tone, hair, clothing, visual identity
- IMAGE_2: POSE REFERENCE — body pose, camera angle, perspective

## Prompt
Using IMAGE_1 as character reference and IMAGE_2 as pose reference:
Generate the person from IMAGE_1 in the exact body pose, camera angle,
and perspective from IMAGE_2. Preserve all facial features, outfit details,
and identity from IMAGE_1 with pixel-level accuracy.
The result should look as if the subject from IMAGE_1 was originally
photographed in the same position as IMAGE_2, with matching lighting,
shadows, and seamless integration. Same aspect ratio as IMAGE_1.

## Rules
- identity from IMAGE_1 is absolute — no drift
- pose/angle/perspective from IMAGE_2 is absolute
- lighting blended from both
- no mixing of identities
EOF

# restoration-upscale
cat > /home/claude/prompt-skill-repo/skills/utils/restoration-upscale/SKILL.md << 'EOF'
# SKILL: restoration-upscale
# Category: utility
# Platform: Stable Diffusion / ComfyUI
# Trigger: upscale, restore, enhance old photo

## Positive Prompt
(exact scene topology retention:1.4), (strict preservation of original subject count:1.3),
absolute spatial coherence, (exact identity retention:1.4),
(total removal of deep wrinkles:1.2), flawless skin structure,
aggressive anti-aging transformation, flawless dermal smoothing,
hyper-plumped skin surface, massive collagen production look.
Optimal biological vitality, radiant natural complexion, well-rested micro-expressions.
Enhanced original lighting physics, micro-contrast preservation.
Forensic-level restoration, hyper-tactile details, visible microscopic skin pores,
vellus hair, sub-surface scattering, precise iris striations.
Authentic material weaves. Optical perfection, raw uncompressed photographic aesthetic.

## Negative Prompt
(hallucinated extra faces, spontaneous subject generation, duplicated heads,
background faces, ghost figures, disembodied limbs, collage, split screen,
grid, before and after, diptych, triptych:1.4), Heavy makeup, artificial youth,
generic beauty filter, digital plastic surgery, botox look, uncanny valley,
CGI, 3D render, illustration, loss of character, AI hallucination,
structural morphing, plastic skin, wax figure, synthetic texture,
blurred micro-details, over-saturated.

## Parameters
- steps: 40
- cfg_scale: 7.5
- denoising_strength: 0.42
- upscaler: 4x_NMKD_Siax_200K
- target_resolution: 4K
EOF

# portrait-rerender
cat > /home/claude/prompt-skill-repo/skills/utils/portrait-rerender/SKILL.md << 'EOF'
# SKILL: portrait-rerender
# Category: utility
# Trigger: rerender portrait, upgrade photo quality, Sony A1 look

## Camera Spec (mandatory)
- Camera: Sony A1
- Lens: 85mm f/1.4
- Aperture: f/1.6
- ISO: 100
- Shutter: 1/200s
- Depth of field: cinematic shallow
- Focus: perfect facial focus
- Color profile: editorial-neutral

## Light Upgrade
- soft directional light
- warm highlights, cool shadows
- deeper contrast, expanded dynamic range
- micro-contrast boost, smooth gradations
- zero harsh shadows

## Preserve Absolutely
- subject identity and facial geometry
- original background (no changes)
- original pose (no changes)
- original expression

## Output
- 4K resolution, 10-bit color
- cinematic editorial style
- real skin texture (not plastic)
- subtle film grain
- portrait crop

## Forbidden
- new background
- face morphing
- fake glow
- flat lighting
- over-smooth skin
- runway lighting
EOF

# identity-transfer
cat > /home/claude/prompt-skill-repo/skills/utils/identity-transfer/SKILL.md << 'EOF'
# SKILL: identity-transfer
# Category: utility
# Platform: image editing AI (GPT-4o, Gemini, SD inpaint)
# Trigger: face swap, identity transfer, composite portrait

## Inputs
- IMAGE_1: source portrait (identity to transfer)
- IMAGE_2: target image (geometry template)

## Core Rules
1. Replace ONLY the face area with person from IMAGE_1
2. KEEP target head size, skull silhouette, head position, head pose
3. Target image is the GEOMETRY TEMPLATE — do not change it
4. Fit source identity via facial landmark alignment

## Landmark Anchors
inner_eyes, outer_eyes, nose_bridge, nostrils, mouth_corners, chin_tip, jawline

## Wardrobe Override (default: black tuxedo)
- mandatory: black formal suit/tuxedo jacket
- mandatory: black satin bow tie, centered under collar
- preferred: white dress shirt
- preserve target pose and lighting for outfit

## Blend Settings
- identity_strength: 0.86
- blend_strength: 0.82
- texture_preservation: 0.9
- jaw_neck_feather: 0.35

## SD Parameters
- steps: 38
- cfg: 5.1
- strength: 0.62
- sampler: dpmpp_2m

## Forbidden
- wrong head size, stretched face, warped skull
- floating face, mask seam, halo edges
- mismatched lighting or color temperature
- plastic skin, over-smoothing
EOF

echo "All utility and structure skills created"
