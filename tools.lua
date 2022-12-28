-- Quarry: tools.lua

-- Add stone quarry hammer.

minetest.register_tool("quarry:stone_quarry_hammer", {
	description = "Stone Quarry Hammer",
	inventory_image = "quarry_stone_hammer.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
	output = "quarry:stone_quarry_hammer",
	recipe = {
			{"group:stone", "default:steel_ingot", "group:stone"},
			{"group:stone", "group:stick", "group:stone"},
			{"", "group:stick", ""}
	}
})

-- Add trowel and mortar.

minetest.register_tool("quarry:trowel_and_mortar", {
	description = "Trowel and Mortar",
	inventory_image = "quarry_trowel_mortar.png",
	wield_image = "quarry_trowel_mortar_wield.png",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			sticky = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=30, maxlevel=1}
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = "quarry:trowel_and_mortar",
	type = "shapeless",
	recipe = {
		"default:clay", "default:clay", "default:clay",
		"group:sand", "group:sand", "group:sand",
		"default:steel_ingot", "bucket:bucket_water"
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
})

-- Scaffolding to support falling stone nodes (instead of player).

minetest.register_node("quarry:scaffold", {
	description = "Scaffold",
	tiles = {"quarry_scaffold_frame.png"},
	drawtype = "glasslike",
	groups = {dig_immediate = 2},
	paramtype = "light",
	sunlight_propagates = true,
})

minetest.register_craft({
	output = "quarry:scaffold 4",
	recipe = {
			{"group:stick", "group:stick", "group:stick"},
			{"group:stick", "", "group:stick"},
			{"group:stick", "group:stick", "group:stick"}
	}
})
