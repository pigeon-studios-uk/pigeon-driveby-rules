--[[
    Pigeon Driveby Rules: Danish (Dansk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'da'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.da = {
    title = 'Skud fra køretøj',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Du kan ikke skyde fra dette køretøj.',
    blocked_seat = 'Du kan ikke skyde fra dette sæde.',
    blocked_speed = 'For hurtigt til at skyde. Sænk farten til {limit} {unit} eller mindre.',
    blocked_weapon = 'Du kan ikke bruge dette våben fra et køretøj.',
    blocked_settling = 'Du er lige steget ind. Giv det et øjeblik.',
}
