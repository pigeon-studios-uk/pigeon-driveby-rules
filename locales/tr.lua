--[[
    Pigeon Driveby Rules: Turkish (Türkçe).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'tr'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.tr = {
    title = 'Araçtan ateş',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Bu araçtan ateş edemezsin.',
    blocked_seat = 'Bu koltuktan ateş edemezsin.',
    blocked_speed = 'Ateş etmek için çok hızlısın. {limit} {unit} veya altına yavaşla.',
    blocked_weapon = 'Bu silahı araçtan kullanamazsın.',
    blocked_settling = 'Daha yeni bindin. Biraz bekle.',
}
