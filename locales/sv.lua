--[[
    Pigeon Driveby Rules: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.sv = {
    title = 'Skjuta från fordon',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Du kan inte skjuta från det här fordonet.',
    blocked_seat = 'Du kan inte skjuta från det här sätet.',
    blocked_speed = 'För snabbt för att skjuta. Sakta ner till {limit} {unit} eller mindre.',
    blocked_weapon = 'Du kan inte använda det här vapnet från ett fordon.',
    blocked_settling = 'Du har precis kommit in. Vänta ett ögonblick.',
}
