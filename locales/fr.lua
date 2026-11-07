--[[
    Pigeon Driveby Rules: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.fr = {
    title = 'Tir en véhicule',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Vous ne pouvez pas tirer depuis ce véhicule.',
    blocked_seat = 'Vous ne pouvez pas tirer depuis ce siège.',
    blocked_speed = 'Trop rapide pour tirer. Ralentissez à {limit} {unit} ou moins.',
    blocked_weapon = 'Vous ne pouvez pas utiliser cette arme depuis un véhicule.',
    blocked_settling = 'Vous venez de monter. Patientez un instant.',
}
