--[[
    Pigeon Driveby Rules: Slovenian (Slovenščina).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sl'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.sl = {
    title = 'Streljanje iz vozila',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Iz tega vozila ne moreš streljati.',
    blocked_seat = 'S tega sedeža ne moreš streljati.',
    blocked_speed = 'Prehitro za streljanje. Upočasni na {limit} {unit} ali manj.',
    blocked_weapon = 'Tega orožja ne moreš uporabiti iz vozila.',
    blocked_settling = 'Pravkar si vstopil. Počakaj trenutek.',
}
