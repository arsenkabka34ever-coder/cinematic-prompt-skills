# SKILL: pose-transfer
# Category: utility
# Trigger: transfer pose from one photo to character from another

## Inputs
- IMAGE_1: CHARACTER — face, clothing, identity
- IMAGE_2: POSE REFERENCE — body pose, camera angle

## Prompt Template
Using IMAGE_1 as character and IMAGE_2 as pose reference:
Generate the person from IMAGE_1 in the exact body pose, camera angle,
and perspective from IMAGE_2. Preserve all facial features, outfit details,
and identity from IMAGE_1 with pixel-level accuracy.
Result should look as if subject from IMAGE_1 was originally photographed
in the same position as IMAGE_2. Matching lighting, shadows, seamless integration.

## Rules
- identity from IMAGE_1: absolute
- pose/angle from IMAGE_2: absolute
- no mixing of identities
