if not mods["um-standalone-big-mining-drill"] then return end

data.raw["mining-drill"]["big-mining-drill"].resource_drain_rate_percent = settings.startup["sei-big-mining-drill-resource-drain-rate"].value

---- sei-library.prototypes.phase-1.entity.circuit-networks.lua adds space-age circuit network connections
data.raw["mining-drill"]["big-mining-drill"].circuit_connector = circuit_connector_definitions["big-mining-drill"]