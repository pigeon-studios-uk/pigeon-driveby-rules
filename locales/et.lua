--[[
    Pigeon Driveby Rules: Estonian (Eesti).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'et'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.et = {
    title = 'Tulistamine sõidukist',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Sellest sõidukist ei saa tulistada.',
    blocked_seat = 'Sellelt istmelt ei saa tulistada.',
    blocked_speed = 'Tulistamiseks liiga kiire. Aeglusta {limit} {unit} või vähemaks.',
    blocked_weapon = 'Seda relva ei saa sõidukist kasutada.',
    blocked_settling = 'Sa just istusid sisse. Oota hetk.',
}
