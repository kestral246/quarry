-- Quarry: stone.lua

-- Node overrides

-- Stone (h)
quarry.override_hammer("default:stone", "quarry:cut_stone", "default:cobble", {cracky = 3})
quarry.override_hammer("stairs:slab_stone", "stairs:slab_cut_stone", "stairs:slab_cobble", {cracky = 3})
quarry.override_hammer("stairs:stair_stone", "stairs:stair_cut_stone", "stairs:stair_cobble", {cracky = 3})
quarry.override_hammer("stairs:stair_inner_stone", "stairs:stair_inner_cut_stone", "stairs:stair_inner_cobble", {cracky = 3})
quarry.override_hammer("stairs:stair_outer_stone", "stairs:stair_outer_cut_stone", "stairs:stair_outer_cobble", {cracky = 3})

-- Cut Stone (m)
minetest.register_node("quarry:cut_stone", {
	description = "Cut Stone",
	tiles = {"default_stone.png^quarry_cut_stone.png"},
	groups = {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_stone",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:stone", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_stone","quarry:cut_stone",{cracky = 3},{"default_stone.png^quarry_cut_stone.png"},"Cut Stone Stair","Cut Stone Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_stone", "stairs:slab_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_stone", "stairs:stair_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_stone", "stairs:stair_inner_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_stone", "stairs:stair_outer_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Stone Block (h)
quarry.override_hammer("default:stone_block", "quarry:cut_stone_block", "default:cobble", {cracky = 2})
quarry.override_hammer("stairs:slab_stone_block", "stairs:slab_cut_stone_block", "stairs:slab_cobble", {cracky = 2})
quarry.override_hammer("stairs:stair_stone_block", "stairs:stair_cut_stone_block", "stairs:stair_cobble", {cracky = 2})
quarry.override_hammer("stairs:stair_inner_stone_block", "stairs:stair_inner_cut_stone_block", "stairs:stair_inner_cobble", {cracky = 2})
quarry.override_hammer("stairs:stair_outer_stone_block", "stairs:stair_outer_cut_stone_block", "stairs:stair_outer_cobble", {cracky = 2})

-- Cut Stone Block (m)
minetest.register_node("quarry:cut_stone_block", {
	description = "Cut Stone Block",
	tiles = {"default_stone_block.png^quarry_cut_stone_block.png"},
	groups = {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_stone_block",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:stone_block", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_stone_block","quarry:cut_stone_block",{cracky = 2},{"default_stone_block.png^quarry_cut_stone_block.png"},"Cut Stone Block Stair","Cut Stone Block Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_stone_block", "stairs:slab_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_stone_block", "stairs:stair_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_stone_block", "stairs:stair_inner_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_stone_block", "stairs:stair_outer_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Cobble (m)
quarry.override_mortar("default:cobble", "default:stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:slab_cobble", "stairs:slab_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_cobble", "stairs:stair_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_inner_cobble", "stairs:stair_inner_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_outer_cobble", "stairs:stair_outer_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})

-- Mossy Cobble (m)
quarry.override_mortar("default:mossycobble", "default:stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:slab_mossycobble", "stairs:slab_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_mossycobble", "stairs:stair_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_inner_mossycobble", "stairs:stair_inner_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_outer_mossycobble", "stairs:stair_outer_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})

-- Stone Brick (p)
quarry.override_pick("default:stonebrick", "default:cobble", {cracky = 2})
quarry.override_pick("stairs:slab_stonebrick", "stairs:slab_cobble", {cracky = 2})
quarry.override_pick("stairs:stair_stonebrick", "stairs:stair_cobble", {cracky = 2})
quarry.override_pick("stairs:stair_inner_stonebrick", "stairs:stair_inner_cobble", {cracky = 2})
quarry.override_pick("stairs:stair_outer_stonebrick", "stairs:stair_outer_cobble", {cracky = 2})


-- Desert Stone (h)
quarry.override_hammer("default:desert_stone", "quarry:cut_desert_stone", "default:desert_cobble", {cracky = 3})
quarry.override_hammer("stairs:slab_desert_stone", "stairs:slab_cut_desert_stone", "stairs:slab_desert_cobble", {cracky = 3})
quarry.override_hammer("stairs:stair_desert_stone", "stairs:stair_cut_desert_stone", "stairs:stair_desert_cobble", {cracky = 3})
quarry.override_hammer("stairs:stair_inner_desert_stone", "stairs:stair_inner_cut_desert_stone", "stairs:stair_inner_desert_cobble", {cracky = 3})
quarry.override_hammer("stairs:stair_outer_desert_stone", "stairs:stair_outer_cut_desert_stone", "stairs:stair_outer_desert_cobble", {cracky = 3})

-- Cut Desert Stone (m)
minetest.register_node("quarry:cut_desert_stone", {
	description = "Cut Desert Stone",
	tiles = {"default_desert_stone.png^quarry_cut_stone.png"},
	groups = {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_desert_stone",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:desert_stone", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_desert_stone","quarry:cut_desert_stone",{cracky = 3},{"default_desert_stone.png^quarry_cut_stone.png"},"Cut Desert Stone Stair","Cut Desert Stone Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_desert_stone", "stairs:slab_desert_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_desert_stone", "stairs:stair_desert_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_desert_stone", "stairs:stair_inner_desert_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_desert_stone", "stairs:stair_outer_desert_stone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Desert Stone Block (h)
quarry.override_hammer("default:desert_stone_block", "quarry:cut_desert_stone_block", "default:desert_cobble", {cracky = 2})
quarry.override_hammer("stairs:slab_desert_stone_block", "stairs:slab_cut_desert_stone_block", "stairs:slab_desert_cobble", {cracky = 2})
quarry.override_hammer("stairs:stair_desert_stone_block", "stairs:stair_cut_desert_stone_block", "stairs:stair_desert_cobble", {cracky = 2})
quarry.override_hammer("stairs:stair_inner_desert_stone_block", "stairs:stair_inner_cut_desert_stone_block", "stairs:stair_inner_desert_cobble", {cracky = 2})
quarry.override_hammer("stairs:stair_outer_desert_stone_block", "stairs:stair_outer_cut_desert_stone_block", "stairs:stair_outer_desert_cobble", {cracky = 2})

-- Cut Desert Stone Block (m)
minetest.register_node("quarry:cut_desert_stone_block", {
	description = "Cut Desert Stone Block",
	tiles = {"default_desert_stone_block.png^quarry_cut_stone_block.png"},
	groups = {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_desert_stone_block",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:desert_stone_block", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_desert_stone_block","quarry:cut_desert_stone_block",{cracky = 2},{"default_desert_stone_block.png^quarry_cut_stone_block.png"},"Cut Desert Stone Block Stair","Cut Desert Stone Block Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_desert_stone_block", "stairs:slab_desert_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_desert_stone_block", "stairs:stair_desert_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_desert_stone_block", "stairs:stair_inner_desert_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_desert_stone_block", "stairs:stair_outer_desert_stone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Desert Cobble (m)
quarry.override_mortar("default:desert_cobble", "default:desert_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:slab_desert_cobble", "stairs:slab_desert_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_desert_cobble", "stairs:stair_desert_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_inner_desert_cobble", "stairs:stair_inner_desert_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_outer_desert_cobble", "stairs:stair_outer_desert_stonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})

-- Desert Stone Brick (p)
quarry.override_pick("default:desert_stonebrick", "default:desert_cobble", {cracky = 2})
quarry.override_pick("stairs:slab_desert_stonebrick", "stairs:slab_desert_cobble", {cracky = 2})
quarry.override_pick("stairs:stair_desert_stonebrick", "stairs:stair_desert_cobble", {cracky = 2})
quarry.override_pick("stairs:stair_inner_desert_stonebrick", "stairs:stair_inner_desert_cobble", {cracky = 2})
quarry.override_pick("stairs:stair_outer_desert_stonebrick", "stairs:stair_outer_desert_cobble", {cracky = 2})


-- Sandstone (h)
quarry.override_hammer("default:sandstone", "quarry:cut_sandstone", "quarry:sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:slab_sandstone", "stairs:slab_cut_sandstone", "stairs:slab_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_sandstone", "stairs:stair_cut_sandstone", "stairs:stair_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_inner_sandstone", "stairs:stair_inner_cut_sandstone", "stairs:stair_inner_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_outer_sandstone", "stairs:stair_outer_cut_sandstone", "stairs:stair_outer_sandstone_rubble", {cracky = 3})

-- Cut Sandstone (m)
minetest.register_node("quarry:cut_sandstone", {
	description = "Cut Sandstone",
	tiles = {"default_sandstone.png^quarry_cut_stone.png"},
	groups = {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_sandstone",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:sandstone", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_sandstone","quarry:cut_sandstone",{cracky = 3},{"default_sandstone.png^quarry_cut_stone.png"},"Cut Sandstone Stair","Cut Sandstone Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_sandstone", "stairs:slab_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_sandstone", "stairs:stair_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_sandstone", "stairs:stair_inner_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_sandstone", "stairs:stair_outer_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Sandstone Block (h)
quarry.override_hammer("default:sandstone_block", "quarry:cut_sandstone_block", "quarry:sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:slab_sandstone_block", "stairs:slab_cut_sandstone_block", "stairs:slab_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_sandstone_block", "stairs:stair_cut_sandstone_block", "stairs:stair_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_inner_sandstone_block", "stairs:stair_inner_cut_sandstone_block", "stairs:stair_inner_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_outer_sandstone_block", "stairs:stair_outer_cut_sandstone_block", "stairs:stair_outer_sandstone_rubble", {cracky = 2})

-- Cut Sandstone Block (m)
minetest.register_node("quarry:cut_sandstone_block", {
	description = "Cut Sandstone Block",
	tiles = {"default_sandstone_block.png^quarry_cut_stone_block.png"},
	groups = {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_sandstone_block",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:sandstone_block", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_sandstone_block","quarry:cut_sandstone_block",{cracky = 2},{"default_sandstone_block.png^quarry_cut_stone_block.png"},"Cut Sandstone Block Stair","Cut Sandstone Block Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_sandstone_block", "stairs:slab_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_sandstone_block", "stairs:stair_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_sandstone_block", "stairs:stair_inner_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_sandstone_block", "stairs:stair_outer_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Sandstone Rubble (m)
minetest.register_node("quarry:sandstone_rubble", {
	description = "Sandstone Rubble",
	tiles = {"default_sandstone.png^quarry_rubble_overlay.png"},
	is_ground_content = false,
	groups = {crumbly = 3, stone = 2, falling_node = 1},
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:sandstonebrick", {sticky = 3}),
})
stairs.register_stair_and_slab("sandstone_rubble","quarry:sandstone_rubble",{cracky = 2},{"default_sandstone.png^quarry_rubble_overlay.png"},"Sandstone Rubble Stair","Sandstone Rubble Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_sandstone_rubble", "stairs:slab_sandstonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_sandstone_rubble", "stairs:stair_sandstonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_inner_sandstone_rubble", "stairs:stair_inner_sandstonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_outer_sandstone_rubble", "stairs:stair_outer_sandstonebrick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})

-- Sandstone Brick (p)
quarry.override_pick("default:sandstonebrick", "quarry:sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:slab_sandstonebrick", "stairs:slab_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_sandstonebrick", "stairs:stair_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_inner_sandstonebrick", "stairs:stair_inner_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_outer_sandstonebrick", "stairs:stair_outer_sandstone_rubble", {cracky = 2})


-- Desert Sandstone (h)
quarry.override_hammer("default:desert_sandstone", "quarry:cut_desert_sandstone", "quarry:desert_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:slab_desert_sandstone", "stairs:slab_cut_desert_sandstone", "stairs:slab_desert_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_desert_sandstone", "stairs:stair_cut_desert_sandstone", "stairs:stair_desert_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_inner_desert_sandstone", "stairs:stair_inner_cut_desert_sandstone", "stairs:stair_inner_desert_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_outer_desert_sandstone", "stairs:stair_outer_cut_desert_sandstone", "stairs:stair_outer_desert_sandstone_rubble", {cracky = 3})

-- Cut Desert Sandstone (m)
minetest.register_node("quarry:cut_desert_sandstone", {
	description = "Cut Desert Sandstone",
	tiles = {"default_desert_sandstone.png^quarry_cut_stone.png"},
	groups = {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_desert_sandstone",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:desert_sandstone", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_desert_sandstone","quarry:cut_desert_sandstone",{cracky = 3},{"default_desert_sandstone.png^quarry_cut_stone.png"},"Cut Desert Sandstone Stair","Cut Desert Sandstone Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_desert_sandstone", "stairs:slab_desert_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_desert_sandstone", "stairs:stair_desert_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_desert_sandstone", "stairs:stair_inner_desert_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_desert_sandstone", "stairs:stair_outer_desert_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Desert Sandstone Block (h)
quarry.override_hammer("default:desert_sandstone_block", "quarry:cut_desert_sandstone_block", "quarry:desert_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:slab_desert_sandstone_block", "stairs:slab_cut_desert_sandstone_block", "stairs:slab_desert_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_desert_sandstone_block", "stairs:stair_cut_desert_sandstone_block", "stairs:stair_desert_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_inner_desert_sandstone_block", "stairs:stair_inner_cut_desert_sandstone_block", "stairs:stair_inner_desert_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_outer_desert_sandstone_block", "stairs:stair_outer_cut_desert_sandstone_block", "stairs:stair_outer_desert_sandstone_rubble", {cracky = 2})

-- Cut Desert Sandstone Block (m)
minetest.register_node("quarry:cut_desert_sandstone_block", {
	description = "Cut Desert Sandstone Block",
	tiles = {"default_desert_sandstone_block.png^quarry_cut_stone_block.png"},
	groups = {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_desert_sandstone_block",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:desert_sandstone_block", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_desert_sandstone_block","quarry:cut_desert_sandstone_block",{cracky = 2},{"default_desert_sandstone_block.png^quarry_cut_stone_block.png"},"Cut Desert Sandstone Block Stair","Cut Desert Sandstone Block Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_desert_sandstone_block", "stairs:slab_desert_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_desert_sandstone_block", "stairs:stair_desert_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_desert_sandstone_block", "stairs:stair_inner_desert_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_desert_sandstone_block", "stairs:stair_outer_desert_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Desert Sandstone Rubble (m)
minetest.register_node("quarry:desert_sandstone_rubble", {
	description = "Desert Sandstone Rubble",
	tiles = {"default_desert_sandstone.png^quarry_rubble_overlay_desert.png"},
	is_ground_content = false,
	groups = {crumbly = 3, stone = 2, falling_node = 1},
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:desert_sandstone_brick", {sticky = 3}),
})
stairs.register_stair_and_slab("desert_sandstone_rubble","quarry:desert_sandstone_rubble",{cracky = 2},{"default_desert_sandstone.png^quarry_rubble_overlay_desert.png"},"Desert Sandstone Rubble Stair","Desert Sandstone Rubble Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_desert_sandstone_rubble", "stairs:slab_desert_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_desert_sandstone_rubble", "stairs:stair_desert_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_inner_desert_sandstone_rubble", "stairs:stair_inner_desert_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_outer_desert_sandstone_rubble", "stairs:stair_outer_desert_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})

-- Desert Sandstone Brick (p)
quarry.override_pick("default:desert_sandstone_brick", "quarry:desert_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:slab_desert_sandstone_brick", "stairs:slab_desert_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_desert_sandstone_brick", "stairs:stair_desert_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_inner_desert_sandstone_brick", "stairs:stair_inner_desert_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_outer_desert_sandstone_brick", "stairs:stair_outer_desert_sandstone_rubble", {cracky = 2})


-- Silver Sandstone (h)
quarry.override_hammer("default:silver_sandstone", "quarry:cut_silver_sandstone", "quarry:silver_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:slab_silver_sandstone", "stairs:slab_cut_silver_sandstone", "stairs:slab_silver_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_silver_sandstone", "stairs:stair_cut_silver_sandstone", "stairs:stair_silver_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_inner_silver_sandstone", "stairs:stair_inner_cut_silver_sandstone", "stairs:stair_inner_silver_sandstone_rubble", {cracky = 3})
quarry.override_hammer("stairs:stair_outer_silver_sandstone", "stairs:stair_outer_cut_silver_sandstone", "stairs:stair_outer_silver_sandstone_rubble", {cracky = 3})

-- Cut Silver Sandstone (m)
minetest.register_node("quarry:cut_silver_sandstone", {
	description = "Cut Silver Sandstone",
	tiles = {"default_silver_sandstone.png^quarry_cut_stone.png"},
	groups = {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_silver_sandstone",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:silver_sandstone", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_silver_sandstone","quarry:cut_silver_sandstone",{cracky = 3},{"default_silver_sandstone.png^quarry_cut_stone.png"},"Cut Silver Sandstone Stair","Cut Silver Sandstone Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_silver_sandstone", "stairs:slab_silver_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_silver_sandstone", "stairs:stair_silver_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_silver_sandstone", "stairs:stair_inner_silver_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_silver_sandstone", "stairs:stair_outer_silver_sandstone", {cracky = 3, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Silver Sandstone Block (h)
quarry.override_hammer("default:silver_sandstone_block", "quarry:cut_silver_sandstone_block", "quarry:silver_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:slab_silver_sandstone_block", "stairs:slab_cut_silver_sandstone_block", "stairs:slab_silver_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_silver_sandstone_block", "stairs:stair_cut_silver_sandstone_block", "stairs:stair_silver_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_inner_silver_sandstone_block", "stairs:stair_inner_cut_silver_sandstone_block", "stairs:stair_inner_silver_sandstone_rubble", {cracky = 2})
quarry.override_hammer("stairs:stair_outer_silver_sandstone_block", "stairs:stair_outer_cut_silver_sandstone_block", "stairs:stair_outer_silver_sandstone_rubble", {cracky = 2})

-- Cut Silver Sandstone Block (m)
minetest.register_node("quarry:cut_silver_sandstone_block", {
	description = "Cut Silver Sandstone Block",
	tiles = {"default_silver_sandstone_block.png^quarry_cut_stone_block.png"},
	groups = {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2},
	drop = "quarry:cut_silver_sandstone_block",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:silver_sandstone_block", {sticky = 2}),
})
stairs.register_stair_and_slab("cut_silver_sandstone_block","quarry:cut_silver_sandstone_block",{cracky = 2},{"default_silver_sandstone_block.png^quarry_cut_stone_block.png"},"Cut Silver Sandstone Block Stair","Cut Silver Sandstone Block Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_cut_silver_sandstone_block", "stairs:slab_silver_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_cut_silver_sandstone_block", "stairs:stair_silver_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_inner_cut_silver_sandstone_block", "stairs:stair_inner_silver_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})
quarry.override_mortar("stairs:stair_outer_cut_silver_sandstone_block", "stairs:stair_outer_silver_sandstone_block", {cracky = 2, stone = 1, falling_node = 1, dig_immediate = 2}, {sticky = 2})

-- Silver Sandstone Rubble (m)
minetest.register_node("quarry:silver_sandstone_rubble", {
	description = "Silver Sandstone Rubble",
	tiles = {"default_silver_sandstone.png^quarry_rubble_overlay_silver.png"},
	is_ground_content = false,
	groups = {crumbly = 3, stone = 2, falling_node = 1},
	sounds = default.node_sound_stone_defaults(),
	on_dig = quarry.mortar_on_dig("default:silver_sandstone_brick", {sticky = 3}),
})
stairs.register_stair_and_slab("silver_sandstone_rubble","quarry:silver_sandstone_rubble",{cracky = 2},{"default_silver_sandstone.png^quarry_rubble_overlay_silver.png"},"Silver Sandstone Rubble Stair","Silver Sandstone Rubble Slab",default.node_sound_stone_defaults(),true)
quarry.override_mortar("stairs:slab_silver_sandstone_rubble", "stairs:slab_silver_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_silver_sandstone_rubble", "stairs:stair_silver_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_inner_silver_sandstone_rubble", "stairs:stair_inner_silver_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})
quarry.override_mortar("stairs:stair_outer_silver_sandstone_rubble", "stairs:stair_outer_silver_sandstone_brick", {crumbly = 3, stone = 1, falling_node = 1}, {sticky = 3})

-- Silver Sandstone Brick (p)
quarry.override_pick("default:silver_sandstone_brick", "quarry:silver_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:slab_silver_sandstone_brick", "stairs:slab_silver_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_silver_sandstone_brick", "stairs:stair_silver_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_inner_silver_sandstone_brick", "stairs:stair_inner_silver_sandstone_rubble", {cracky = 2})
quarry.override_pick("stairs:stair_outer_silver_sandstone_brick", "stairs:stair_outer_silver_sandstone_rubble", {cracky = 2})


-- Override stone_with_* nodes to leave cobble in ground.
-- Lumps still go into player's inventory.
quarry.override_with("default:stone_with_coal")
quarry.override_with("default:stone_with_iron")
quarry.override_with("default:stone_with_copper")
quarry.override_with("default:stone_with_tin")
quarry.override_with("default:stone_with_gold")
quarry.override_with("default:stone_with_mese")
quarry.override_with("default:stone_with_diamond")


-- These stone nodes can no longer be crafted directly.
for _,nodename in pairs({
		"default:stone", "stairs:slab_stone", "stairs:stair_stone", "stairs:stair_inner_stone", "stairs:stair_outer_stone", 
		"default:stonebrick", "stairs:slab_stonebrick", "stairs:stair_stonebrick", "stairs:stair_inner_stonebrick", "stairs:stair_outer_stonebrick", 
		"default:stone_block", "stairs:slab_stone_block", "stairs:stair_stone_block", "stairs:stair_inner_stone_block", "stairs:stair_outer_stone_block", 
		"default:desert_stone", "stairs:slab_desert_stone", "stairs:stair_desert_stone", "stairs:stair_inner_desert_stone", "stairs:stair_outer_desert_stone", 
		"default:desert_stonebrick", "stairs:slab_desert_stonebrick", "stairs:stair_desert_stonebrick", "stairs:stair_inner_desert_stonebrick", "stairs:stair_outer_desert_stonebrick", 
		"default:desert_stone_block", "stairs:slab_desert_stone_block", "stairs:stair_desert_stone_block", "stairs:stair_inner_desert_stone_block", "stairs:stair_outer_desert_stone_block", 
		"default:sandstone", "stairs:slab_sandstone", "stairs:stair_sandstone", "stairs:stair_inner_sandstone", "stairs:stair_outer_sandstone", 
		"default:sandstonebrick", "stairs:slab_sandstonebrick", "stairs:stair_sandstonebrick", "stairs:stair_inner_sandstonebrick", "stairs:stair_outer_sandstonebrick", 
		"default:sandstone_block", "stairs:slab_sandstone_block", "stairs:stair_sandstone_block", "stairs:stair_inner_sandstone_block", "stairs:stair_outer_sandstone_block",
		"default:desert_sandstone", "stairs:slab_desert_sandstone", "stairs:stair_desert_sandstone", "stairs:stair_inner_desert_sandstone", "stairs:stair_outer_desert_sandstone", 
		"default:desert_sandstone_brick", "stairs:slab_desert_sandstone_brick", "stairs:stair_desert_sandstone_brick", "stairs:stair_inner_desert_sandstone_brick", "stairs:stair_outer_desert_sandstone_brick", 
		"default:desert_sandstone_block", "stairs:slab_desert_sandstone_block", "stairs:stair_desert_sandstone_block", "stairs:stair_inner_desert_sandstone_block", "stairs:stair_outer_desert_sandstone_block",
		"default:silver_sandstone", "stairs:slab_silver_sandstone", "stairs:stair_silver_sandstone", "stairs:stair_inner_silver_sandstone", "stairs:stair_outer_silver_sandstone", 
		"default:silver_sandstone_brick", "stairs:slab_silver_sandstone_brick", "stairs:stair_silver_sandstone_brick", "stairs:stair_inner_silver_sandstone_brick", "stairs:stair_outer_silver_sandstone_brick", 
		"default:silver_sandstone_block", "stairs:slab_silver_sandstone_block", "stairs:stair_silver_sandstone_block", "stairs:stair_inner_silver_sandstone_block", "stairs:stair_outer_silver_sandstone_block"
		}) do
	minetest.clear_craft({output = nodename})
end

-- New craft recipes.
-- For cut_stone_block nodes.
for _,nodename in pairs({"quarry:cut_stone", "quarry:cut_desert_stone", "quarry:cut_sandstone", "quarry:cut_desert_sandstone", "quarry:cut_silver_sandstone"}) do
	minetest.register_craft({
		output = nodename.."_block 9",
		recipe = {
				{nodename, nodename, nodename},
				{nodename, nodename, nodename},
				{nodename, nodename, nodename}
		}
	})
end
