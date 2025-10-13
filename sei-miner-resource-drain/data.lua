
data.raw["mining-drill"]["electric-mining-drill"].resource_drain_rate_percent = settings.startup["sei-electric-mining-drill-resource-drain-rate"].value
data.raw["mining-drill"]["area-mining-drill"].resource_drain_rate_percent = settings.startup["sei-area-mining-drill-resource-drain-rate"].value

if mods["Krastorio2"] then
    data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].resource_drain_rate_percent = settings.startup["sei-kr-electric-mining-drill-mk2-resource-drain-rate"].value
    data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].resource_drain_rate_percent = settings.startup["sei-kr-electric-mining-drill-mk3-resource-drain-rate"].value
end

if mods["um-standalone-big-mining-drill"] then
    data.raw["mining-drill"]["big-mining-drill"].resource_drain_rate_percent = settings.startup["sei-big-mining-drill-resource-drain-rate"].value
end