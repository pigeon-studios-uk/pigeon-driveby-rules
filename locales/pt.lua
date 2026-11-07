--[[
    Pigeon Driveby Rules: Portuguese (Português).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.pt = {
    title = 'Disparo do veículo',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Não podes disparar deste veículo.',
    blocked_seat = 'Não podes disparar deste lugar.',
    blocked_speed = 'Demasiado rápido para disparar. Abranda para {limit} {unit} ou menos.',
    blocked_weapon = 'Não podes usar esta arma a partir de um veículo.',
    blocked_settling = 'Acabaste de entrar. Espera um momento.',
}
