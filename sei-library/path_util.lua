local Util = {}

Util.space_age_path = "__base__/../space-age/"

local function fix_path(path)
    local seperator_location = string.find(path, "/")
    return Util.space_age_path..string.sub(path, seperator_location)
end

function Util.sa_sprite_load(path, table)
    sprite = util.sprite_load(path, table)
    sprite.filename = fix_path(sprite.filename)
    return sprite
end

function Util.sa_soundvariations(filename, variations, volume, modifiers)
    sounds = sound_variations(path, variations, volume, modifiers)
    for _,sound in pairs(sounds) do
        sound.filename = fix_path(sound.filename)
    end
    return sounds
end

function Util.sa_soundvariations_with_volume_variations(filename, variations, min_volume, max_volume, modifiers)
    sounds = sound_variations_with_volume_variations(filename, variations, min_volume, max_volume, modifiers)
    for _,sound in pairs(sounds) do
        sound.filename = fix_path(sound.filename)
    end
end

return Util
