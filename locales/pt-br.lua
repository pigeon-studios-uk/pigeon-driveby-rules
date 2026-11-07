--[[
    Pigeon Driveby Rules: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    title = 'Tiro do veículo',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Você não pode atirar deste veículo.',
    blocked_seat = 'Você não pode atirar deste banco.',
    blocked_speed = 'Rápido demais para atirar. Reduza para {limit} {unit} ou menos.',
    blocked_weapon = 'Você não pode usar esta arma de dentro de um veículo.',
    blocked_settling = 'Você acabou de entrar. Espere um momento.',
}
