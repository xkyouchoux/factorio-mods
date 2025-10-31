local folder_base = (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) and "__Krastorio2Assets__/buildings/" or "__k2-steel-pipes__/graphics/"
local entity_base = (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) and "steel-pipe" or "pipe"
local pipe_prefix = (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) and "steel-" or ""
--  Functions
function define_pipe_sprite(filename)
  sprite=
  {
    filename=folder_base..entity_base.."/"..pipe_prefix..filename,
    priority="extra-high",
    width=128,
    height=128,
    scale=0.5
  }
  return sprite
end

function define_pipecover_sprite(filename)
  sprite=
  {
    filename=folder_base..entity_base.."-covers/"..pipe_prefix..filename,
    priority="extra-high",
    width=128,
    height=128,
    scale=0.5
  }
  return sprite
end

local steel_pipe_covers = {
  north = {
    layers = {
      define_pipecover_sprite("pipe-cover-north.png"),
      {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
        draw_as_shadow = true,
      },
    },
  },
  east = {
    layers = {
      define_pipecover_sprite("pipe-cover-east.png"),
      {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
        draw_as_shadow = true,
      },
    },
  },
  south = {
    layers = {
      define_pipecover_sprite("pipe-cover-south.png"),
      {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
        draw_as_shadow = true,
      },
    },
  },
  west = {
    layers = {
      define_pipecover_sprite("pipe-cover-west.png"),
      {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5,
        draw_as_shadow = true,
      },
    },
  },
}


--  Initialization

--  Straight Space Pipe
local steel_pipe_straight=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
steel_pipe_straight.name="steel-pipe-straight"
steel_pipe_straight.icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-straight.png"
steel_pipe_straight.max_health=200
steel_pipe_straight.fast_replaceable_group = "pipe"
steel_pipe_straight.selection_box={{-0.35,-0.5},{0.35,0.5}}
steel_pipe_straight.minable={mining_time=0.1,result="steel-pipe-straight"}
steel_pipe_straight.placeable_by={item="steel-pipe-straight",count=1}
steel_pipe_straight.corpse="pipe-remnants"
steel_pipe_straight.resistances = 
{
  { type = "fire", percent = 90 },
  { type = "impact", percent = 50 },
}
steel_pipe_straight.fluid_box.pipe_connections=
{
  { direction = defines.direction.north, position = { 0, 0 }},
  { direction = defines.direction.south, position = { 0, 0 }},
}
steel_pipe_straight.fluid_box.pipe_covers=steel_pipe_covers
steel_pipe_straight.pictures.picture = 
{
  north=define_pipe_sprite("pipe-straight-vertical.png"),
  south=define_pipe_sprite("pipe-straight-vertical.png"),
  east=define_pipe_sprite("pipe-straight-horizontal.png"),
  west=define_pipe_sprite("pipe-straight-horizontal.png")
}

--  T-Junction Space Pipe
local steel_pipe_t_junction=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
steel_pipe_t_junction.name="steel-pipe-t-junction"
steel_pipe_t_junction.icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-t-junction.png"
steel_pipe_t_junction.max_health=200
steel_pipe_t_junction.fast_replaceable_group = "pipe"
steel_pipe_t_junction.selection_box={{-0.5,-0.35},{0.5,0.5}}
steel_pipe_t_junction.minable={mining_time=0.1,result="steel-pipe-t-junction"}
steel_pipe_t_junction.placeable_by={item="steel-pipe-t-junction",count=1}
steel_pipe_t_junction.corpse="pipe-remnants"
steel_pipe_t_junction.resistances = 
{
  { type = "fire", percent = 90 },
  { type = "impact", percent = 50 },
}
steel_pipe_t_junction.fluid_box.pipe_connections=
{
  { direction = defines.direction.south, position = { 0, 0 }},
  { direction = defines.direction.east, position = { 0, 0 }},
  { direction = defines.direction.west, position = { 0, 0 }},
}
steel_pipe_t_junction.fluid_box.pipe_covers=steel_pipe_covers
steel_pipe_t_junction.pictures.picture=
{
  north=define_pipe_sprite("pipe-t-down.png"), 
  east=define_pipe_sprite("pipe-t-left.png"),
  south=define_pipe_sprite("pipe-t-up.png"), 
  west=define_pipe_sprite("pipe-t-right.png") 
}

--  Elbow Space Pipe
local steel_pipe_elbow=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
steel_pipe_elbow.name="steel-pipe-elbow"
steel_pipe_elbow.icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-elbow.png"
steel_pipe_elbow.max_health=200
steel_pipe_elbow.fast_replaceable_group = "pipe"
steel_pipe_elbow.selection_box={{-0.5,-0.35},{0.5,0.5}}
steel_pipe_elbow.minable={mining_time=0.1,result="steel-pipe-elbow"}
steel_pipe_elbow.placeable_by={item="steel-pipe-elbow",count=1}
steel_pipe_elbow.corpse="pipe-remnants"
steel_pipe_elbow.resistances = 
{
  { type = "fire", percent = 90 },
  { type = "impact", percent = 50 },
}
steel_pipe_elbow.fluid_box.pipe_connections=
{
  { direction = defines.direction.south, position = { 0, 0 }},
  { direction = defines.direction.east, position = { 0, 0 }},
}
steel_pipe_elbow.fluid_box.pipe_covers=steel_pipe_covers
steel_pipe_elbow.pictures.picture=
{
  north=define_pipe_sprite("pipe-corner-down-right.png"),
  east=define_pipe_sprite("pipe-corner-down-left.png"),
  south=define_pipe_sprite("pipe-corner-up-left.png"),
  west=define_pipe_sprite("pipe-corner-up-right.png")
}

data:extend({--  Entities
  steel_pipe_elbow,
  steel_pipe_t_junction, 
  steel_pipe_straight 
})