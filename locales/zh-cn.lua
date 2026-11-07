--[[
    Pigeon Driveby Rules: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    title = '车上射击',

    -- Shown when a player tries to aim from a vehicle and a rule stops them.
    blocked_vehicle = '你不能在这辆车上射击。',
    blocked_seat = '你不能在这个座位上射击。',
    blocked_speed = '车速太快，无法射击。请减速到 {limit} {unit} 或以下。',
    blocked_weapon = '你不能在车上使用这把武器。',
    blocked_settling = '你刚上车，稍等一下。',
}
