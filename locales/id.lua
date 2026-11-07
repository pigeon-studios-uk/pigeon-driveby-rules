--[[
    Pigeon Driveby Rules: Indonesian (Bahasa Indonesia).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'id'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.id = {
    title = 'Tembak dari kendaraan',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Kamu tidak bisa menembak dari kendaraan ini.',
    blocked_seat = 'Kamu tidak bisa menembak dari kursi ini.',
    blocked_speed = 'Terlalu cepat untuk menembak. Pelankan sampai {limit} {unit} atau kurang.',
    blocked_weapon = 'Kamu tidak bisa memakai senjata ini dari kendaraan.',
    blocked_settling = 'Kamu baru saja naik. Tunggu sebentar.',
}
