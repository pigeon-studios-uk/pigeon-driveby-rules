--[[
    Pigeon Driveby Rules: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.fi = {
    title = 'Ammunta ajoneuvosta',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Et voi ampua tästä ajoneuvosta.',
    blocked_seat = 'Et voi ampua tältä istuimelta.',
    blocked_speed = 'Liian kova vauhti ampumiseen. Hidasta nopeuteen {limit} {unit} tai alle.',
    blocked_weapon = 'Et voi käyttää tätä asetta ajoneuvosta.',
    blocked_settling = 'Nousit juuri kyytiin. Odota hetki.',
}
