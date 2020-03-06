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
