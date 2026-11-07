--[[
    Pigeon Driveby Rules: Croatian (Hrvatski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hr'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.hr = {
    title = 'Pucanje iz vozila',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = 'Ne možeš pucati iz ovog vozila.',
    blocked_seat = 'Ne možeš pucati s ovog sjedala.',
    blocked_speed = 'Prebrzo za pucanje. Uspori na {limit} {unit} ili manje.',
    blocked_weapon = 'Ovo oružje ne možeš koristiti iz vozila.',
    blocked_settling = 'Tek si ušao. Pričekaj trenutak.',
}
