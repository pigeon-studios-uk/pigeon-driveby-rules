--[[
    Pigeon Driveby Rules: English.

    To translate, copy this file to a new one named with the language's two-letter code (such as de.lua),
    change `Locales.en` to match (Locales.de), translate the text in quotes, and set Config.Locale.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.en = {
    title = 'Drive-by',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'You can\'t shoot from this vehicle.',
    blocked_seat = 'You can\'t shoot from this seat.',
    blocked_speed = 'Too fast to shoot. Slow down to {limit} {unit} or less.',
    blocked_weapon = 'You can\'t use this weapon from a vehicle.',
    blocked_settling = 'You\'ve only just got in. Give it a moment.',
}
