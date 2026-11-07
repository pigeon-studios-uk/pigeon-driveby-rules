--[[
    Pigeon Driveby Rules: Polish (Polski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pl'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.pl = {
    title = 'Strzelanie z pojazdu',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Nie możesz strzelać z tego pojazdu.',
    blocked_seat = 'Nie możesz strzelać z tego miejsca.',
    blocked_speed = 'Za szybko, żeby strzelać. Zwolnij do {limit} {unit} lub mniej.',
    blocked_weapon = 'Nie możesz używać tej broni z pojazdu.',
    blocked_settling = 'Dopiero wsiadłeś. Daj sobie chwilę.',
}
