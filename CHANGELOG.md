# Changelog

All notable changes to Pigeon Driveby Rules are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

### Added

- 22 more languages, so it now comes in 23: Czech, Danish, German, Spanish, Estonian, Finnish, French, Croatian, Hungarian, Indonesian, Italian, Dutch, Norwegian, Polish, Portuguese, Brazilian Portuguese, Romanian, Slovenian, Swedish, Turkish, and Simplified and Traditional Chinese.
- `Config.Locale = 'auto'`, the new default: it follows ox_lib's language (`setr ox:locale "de"` in `server.cfg`) and is English when that isn't set. A config that already says `'en'` stays in English.

## [1.0.0] - 2026-11-03

First release.

### Highlights

- Speed limits for shooting from vehicles, for each seat
- Choose which seats, weapons and vehicles can be used
- Exemptions by job, duty or ACE permission
- A short message tells players why they can't shoot
- Optional first person while shooting

### Added

- Rules for the driver, the front passenger and the rear seats: whether each can shoot from the vehicle, and up to what speed, in mph or km/h.
- A short wait after getting into a vehicle before shooting from it.
- Weapons: any weapon GTA allows, only those listed, or all but those listed, by weapon name or weapon group.
- Vehicle classes and vehicles nobody can shoot from, and vehicles that are never blocked by their class.
- Exemptions by ACE permission, and by job with Qbox, QBCore or ESX, optionally only on duty, kept up to date when a job or duty changes.
- `SetExempt` and `IsExempt` server exports for other resources.
- A message when a player tries to aim and a rule stops them, with ox_lib notifications or GTA's notification feed.
- Optional first person while shooting from a vehicle, back to the player's own view afterwards.
- Every message in `locales/`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-driveby-rules/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-driveby-rules/releases/tag/v1.0.0
