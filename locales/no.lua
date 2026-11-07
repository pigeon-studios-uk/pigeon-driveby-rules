--[[
    Pigeon Driveby Rules: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.no = {
    title = 'Skyting fra kjøretøy',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Du kan ikke skyte fra dette kjøretøyet.',
    blocked_seat = 'Du kan ikke skyte fra dette setet.',
    blocked_speed = 'For fort til å skyte. Sett ned farten til {limit} {unit} eller mindre.',
    blocked_weapon = 'Du kan ikke bruke dette våpenet fra et kjøretøy.',
    blocked_settling = 'Du har nettopp satt deg inn. Vent litt.',
}
