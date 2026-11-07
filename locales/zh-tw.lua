--[[
    Pigeon Driveby Rules: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    title = '車上射擊',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = '你不能在這輛車上射擊。',
    blocked_seat = '你不能在這個座位上射擊。',
    blocked_speed = '車速太快，無法射擊。請減速到 {limit} {unit} 或以下。',
    blocked_weapon = '你不能在車上使用這把武器。',
    blocked_settling = '你剛上車，稍等一下。',
}
