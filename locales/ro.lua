--[[
    Pigeon Driveby Rules: Romanian (Română).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'ro'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.ro = {
    title = 'Tras din vehicul',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Nu poți trage din acest vehicul.',
    blocked_seat = 'Nu poți trage de pe acest loc.',
    blocked_speed = 'Prea repede ca să tragi. Încetinește la {limit} {unit} sau mai puțin.',
    blocked_weapon = 'Nu poți folosi această armă dintr-un vehicul.',
    blocked_settling = 'Abia ai urcat. Așteaptă o clipă.',
}
