--[[
    Pigeon Driveby Rules: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.hu = {
    title = 'Lövés járműből',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Ebből a járműből nem lőhetsz.',
    blocked_seat = 'Erről az ülésről nem lőhetsz.',
    blocked_speed = 'Túl gyors vagy a lövéshez. Lassíts {limit} {unit} alá.',
    blocked_weapon = 'Ezt a fegyvert nem használhatod járműből.',
    blocked_settling = 'Épp most szálltál be. Várj egy pillanatot.',
}
