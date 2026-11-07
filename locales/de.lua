--[[
    Pigeon Driveby Rules: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.de = {
    title = 'Drive-by',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Aus diesem Fahrzeug kannst du nicht schießen.',
    blocked_seat = 'Von diesem Sitz aus kannst du nicht schießen.',
    blocked_speed = 'Zu schnell zum Schießen. Fahr {limit} {unit} oder langsamer.',
    blocked_weapon = 'Diese Waffe kannst du nicht aus einem Fahrzeug benutzen.',
    blocked_settling = 'Du bist gerade erst eingestiegen. Warte einen Moment.',
}
