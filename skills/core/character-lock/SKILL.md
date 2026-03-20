# SKILL: character-lock
# Category: core
# Trigger: any project with a specific character from a reference photo

## Identity Anchor
- reference_photo: USER_UPLOADED_IMAGE_1
- binding_mode: absolute_character_lock
- priority: maximum

## Rules
- face must match reference exactly — no exceptions
- no beauty filters or idealization
- no facial drift across frames
- consistent age, proportions, jaw/cheek/eye geometry
- no averaging between references

## Multi-Reference Policy
When multiple reference images provided:
- identity_close (priority 10) — face authority
- identity_profile (priority 9) — silhouette/hair support
- full_body (priority 8) — pose/proportion reference
- NEVER average identities into a new face

## Anti-Drift Rules
- use identity refs in EVERY tile including wides
- portraits: keep both eyes readable
- do not mask face with extreme shadow
- wide shots: identity readable via posture + silhouette

## Auto-Correction Protocol
- priority: always_on
- scope: movement logic, anatomy, cultural accuracy, composition
- behavior: silent corrections unless explanation requested

## Hard Fail If Present
- face substitution / new person / identity drift
- eye asymmetry or drifting irises
- melted hands or fused fingers
- duplicated characters
- beautification drift
