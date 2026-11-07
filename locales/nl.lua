--[[
    Pigeon Driveby Rules: Dutch (Nederlands).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'nl'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.nl = {
    title = 'Drive-by',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Je kunt niet schieten vanuit dit voertuig.',
    blocked_seat = 'Je kunt niet schieten vanaf deze stoel.',
    blocked_speed = 'Te snel om te schieten. Rijd {limit} {unit} of langzamer.',
    blocked_weapon = 'Je kunt dit wapen niet vanuit een voertuig gebruiken.',
    blocked_settling = 'Je bent net ingestapt. Wacht even.',
}
