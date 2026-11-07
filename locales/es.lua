--[[
    Pigeon Driveby Rules: Spanish (Español).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'es'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.es = {
    title = 'Disparo desde vehículo',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'No puedes disparar desde este vehículo.',
    blocked_seat = 'No puedes disparar desde este asiento.',
    blocked_speed = 'Vas demasiado rápido para disparar. Reduce a {limit} {unit} o menos.',
    blocked_weapon = 'No puedes usar esta arma desde un vehículo.',
    blocked_settling = 'Acabas de subir. Espera un momento.',
}
