--[[
    Pigeon Driveby Rules: Czech (Čeština).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'cs'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.cs = {
    title = 'Střelba z auta',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Z tohoto vozidla nemůžeš střílet.',
    blocked_seat = 'Z tohoto sedadla nemůžeš střílet.',
    blocked_speed = 'Na střelbu jedeš moc rychle. Zpomal na {limit} {unit} nebo méně.',
    blocked_weapon = 'Tuto zbraň nemůžeš z vozidla použít.',
    blocked_settling = 'Právě jsi nastoupil. Dej tomu chvilku.',
}
