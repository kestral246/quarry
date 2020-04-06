-- Make gravel digging consistent with cobble.
-- However, this could go either way.
-- With the default crumbly = 3, both cobble and gravel are easy to dig
--   by hand, so shovels aren't really necessary.
-- Setting crumbly = 2 for both, makes switching to shovels advantageous,
--   at the cost of making stone even more difficult to work.

minetest.override_item("default:gravel", {
	groups = {crumbly = 3, falling_nodes = 1},
})

-- Make dirt nodes also falling.

minetest.override_item("default:dirt", {
	groups = {crumbly = 3, soil = 1, falling_node = 1},
})
minetest.override_item("default:dirt_with_grass", {
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
})
minetest.override_item("default:dirt_with_grass_footsteps", {
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1, falling_node = 1},
})
minetest.override_item("default:dirt_with_dry_grass", {
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	})
minetest.override_item("default:dirt_with_snow", {
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1, falling_node = 1},
})
minetest.override_item("default:dirt_with_rainforest_litter", {
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
})
minetest.override_item("default:dirt_with_coniferous_litter", {
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
})
minetest.override_item("default:dry_dirt", {
	groups = {crumbly = 3, soil = 1, falling_node = 1},
})
minetest.override_item("default:dry_dirt_with_dry_grass", {
	groups = {crumbly = 3, soil = 1, falling_node = 1},
})
minetest.override_item("default:permafrost", {
	groups = {cracky = 3, falling_node = 1},
})
minetest.override_item("default:permafrost_with_stones", {
	groups = {cracky = 3, falling_node = 1},
})
minetest.override_item("default:permafrost_with_moss", {
	groups = {cracky = 3, falling_node = 1},
})
minetest.override_item("default:snowblock", {
	groups = {crumbly = 3, cools_lava = 1, snowy = 1, falling_node = 1},
})
