local data_util = require("__sa-planets-pack__.data_util")

local science_packs = {
    -- basic science pack
    {
        type = "tool",
        name = "automation-science-pack",
        order = "a[basic-science-pack]-a[automation-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "recipe",
        name = "igrys-automation-science-pack",
        order = "a[basic-science-pack]-a[automation-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "logistic-science-pack",
        order = "a[basic-science-pack]-b[logistic-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "military-science-pack",
        order = "a[basic-science-pack]-c[military-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "chemical-science-pack",
        order = "a[basic-science-pack]-d[chemical-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "utility-science-pack",
        order = "a[basic-science-pack]-e[utility-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "recipe",
        name = "rubia-bio-utility-science-pack",
        order = "a[basic-science-pack]-e[utility-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "production-science-pack",
        order = "a[basic-science-pack]-f[production-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "nuclear-science-pack",
        order = "a[basic-science-pack]-g[nuclear-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "tool",
        name = "space-science-pack",
        order = "a[basic-science-pack]-h[space-science-pack]",
        subgroup = "basic-science-pack",
    },
    {
        type = "recipe",
        name = "cerys-space-science-pack-from-methane-ice",
        order = "a[basic-science-pack]-h[space-science-pack]",
        subgroup = "basic-science-pack",
    },

    -- intermediate science pack
    {
        type = "tool",
        name = "electromagnetic-science-pack",
        order = "b[intermediate-science-pack]-a[electromagnetic-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "agricultural-science-pack",
        order = "b[intermediate-science-pack]-b[agricultural-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "recipe",
        name = "agricultural-science-pack",
        order = nil,
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "metallurgic-science-pack",
        order = "b[intermediate-science-pack]-c[metallurgic-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "item",
        name = "biorecycling-science-pack",
        order = "b[intermediate-science-pack]-d[biorecycling-science-pack]-a[crude-biorecycling-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "item",
        name = "biorecycling-science-pack",
        order = "b[intermediate-science-pack]-d[biorecycling-science-pack]-b[ghetto-biorecycling-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "biorecycling-science-pack",
        order = "b[intermediate-science-pack]-d[biorecycling-science-pack]-c[biorecycling-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "cerysian-science-pack",
        order = "b[intermediate-science-pack]-e[cerysian-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "electrochemical-science-pack",
        order = "b[intermediate-science-pack]-f[electrochemical-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "pelagos-science-pack",
        order = "b[intermediate-science-pack]-g[pelagos-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "recipe",
        name = "pelagos-science-pack",
        order = nil,
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "vanadium-science-pack",
        order = "b[intermediate-science-pack]-h[vanadium-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "igrys-mineral-science-pack",
        order = "b[intermediate-science-pack]-i[igrys-mineral-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "recipe",
        name = "igrys-mineral-science-pack",
        order = nil,
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "rubia-biofusion-science-pack",
        order = "b[intermediate-science-pack]-j[rubia-biofusion-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "slp-sun-science-pack",
        order = "b[intermediate-science-pack]-k[slp-sun-science-pack]",
        subgroup = "intermediate-science-pack",
    },
    {
        type = "tool",
        name = "interstellar-science-pack",
        order = "b[intermediate-science-pack]-l[interstellar-science-pack]",
        subgroup = "intermediate-science-pack",
    },

    -- tiberium simple science
    {
        type = "tool",
        name = "tiberium-science",
        order = "d[tiberium-science]-a[simple]-a[tiberium-science]",
        subgroup = "tiberium-simple-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-mechanical",
        order = "d[tiberium-science]-a[simple]-b[tiberium-science-mechanical]",
        subgroup = "tiberium-simple-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-thermal",
        order = "d[tiberium-science]-a[simple]-c[tiberium-science-thermal]",
        subgroup = "tiberium-simple-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-chemical",
        order = "d[tiberium-science]-a[simple]-d[tiberium-science-chemical]",
        subgroup = "tiberium-simple-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-nuclear",
        order = "d[tiberium-science]-a[simple]-e[tiberium-science-nuclear]",
        subgroup = "tiberium-simple-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-EM",
        order = "d[tiberium-science]-a[simple]-f[tiberium-science-EM]",
        subgroup = "tiberium-simple-science",
    },

    -- tiberium mixed science
    {
        type = "recipe",
        name = "tiberium-science-thru-thermal",
        order = "d[tiberium-science]-b[mixed]-a[tiberium-science-thru-thermal]",
        subgroup = "tiberium-mixed-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-thru-chemical",
        order = "d[tiberium-science]-b[mixed]-b[tiberium-science-thru-chemical]",
        subgroup = "tiberium-mixed-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-thru-nuclear",
        order = "d[tiberium-science]-b[mixed]-c[tiberium-science-thru-nuclear]",
        subgroup = "tiberium-mixed-science",
    },
    {
        type = "recipe",
        name = "tiberium-science-thru-EM",
        order = "d[tiberium-science]-b[mixed]-d[tiberium-science-thru-EM]",
        subgroup = "tiberium-mixed-science",
    },

    -- advanced science pack
    {
        type = "tool",
        name = "cryogenic-science-pack",
        order = "e[advanced-science-pack]-a[cryogenic-science-pack]",
        subgroup = "advanced-science-pack",
    },
    {
        type = "tool",
        name = "hydraulic-science-pack",
        order = "e[advanced-science-pack]-b[hydraulic-science-pack]",
        subgroup = "advanced-science-pack",
    },
    {
        type = "tool",
        name = "galvanization-science-pack",
        order = "e[advanced-science-pack]-c[galvanization-science-pack]",
        subgroup = "advanced-science-pack",
    },
    {
        type = "tool",
        name = "golden-science-pack",
        order = "e[advanced-science-pack]-d[golden-science-pack]",
        subgroup = "advanced-science-pack",
    },
    {
        type = "tool",
        name = "bioluminescent-science-pack",
        order = "e[advanced-science-pack]-e[bioluminescent-science-pack]",
        subgroup = "advanced-science-pack",
    },
    {
        type = "tool",
        name = "gas-manipulation-science-pack",
        order = "e[advanced-science-pack]-f[gas-manipulation-science-pack]",
        subgroup = "advanced-science-pack",
    },
    {
        type = "recipe",
        name = "gas-manipulation-science-pack",
        order = "e[advanced-science-pack]-f[gas-manipulation-science-pack]",
        subgroup = "advanced-science-pack",
    },

    -- metal and stars science pack
    {
        type = "tool",
        name = "nanite-science-pack",
        order = "f[metal-and-stars-science-pack]-a[nanite-science-pack]",
        subgroup = "metal-and-stars-science-pack",
    },
    {
        type = "tool",
        name = "ring-science-pack",
        order = "f[metal-and-stars-science-pack]-b[ring-science-pack]",
        subgroup = "metal-and-stars-science-pack",
    },
    {
        type = "item",
        name = "quantum-science-pack",
        order = "f[metal-and-stars-science-pack]-c[quantum-science-pack]",
        subgroup = "metal-and-stars-science-pack",
    },
    {
        type = "tool",
        name = "quantum-science-pack",
        order = "f[metal-and-stars-science-pack]-c[quantum-science-pack]",
        subgroup = "metal-and-stars-science-pack",
    },
    {
        type = "tool",
        name = "anomaly-science-pack",
        order = "f[metal-and-stars-science-pack]-d[anomaly-science-pack]",
        subgroup = "metal-and-stars-science-pack",
    },

    -- dea dia science packs
    {
        type = "tool",
        name = "insulation-science-pack",
        order = "g[dea-dia-science-pack]-a[insulation-science-pack]",
        subgroup = "dea-dia-science-pack",
    },
    {
        type = "tool",
        name = "thermodynamic-science-pack",
        order = "g[dea-dia-science-pack]-b[thermodynamic-science-pack]",
        subgroup = "dea-dia-science-pack",
    },
    {
        type = "tool",
        name = "aerospace-science-pack",
        order = "g[dea-dia-science-pack]-c[aerospace-science-pack]",
        subgroup = "dea-dia-science-pack",
    },

    -- promethium science packs
    {
        type = "tool",
        name = "promethium-science-pack",
        order = "h[promethium-science-pack]-a[promethium-science-pack]",
        subgroup = "promethium-science-pack",
    },
}

for _,v in pairs(science_packs) do
    if v then
        data_util.conditional_modify(v)
    end
end
