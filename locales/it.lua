--[[
    Pigeon Driveby Rules: Italian (Italiano).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'it'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.it = {
    title = 'Sparo dal veicolo',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Non puoi sparare da questo veicolo.',
    blocked_seat = 'Non puoi sparare da questo sedile.',
    blocked_speed = 'Troppo veloce per sparare. Rallenta a {limit} {unit} o meno.',
    blocked_weapon = 'Non puoi usare quest\'arma da un veicolo.',
    blocked_settling = 'Sei appena salito. Aspetta un attimo.',
}
