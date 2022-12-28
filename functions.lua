-- Quarry: functions.lua

-- Override stone_with_* nodes to leave cobble in ground.
function quarry.override_with(node_name)
	minetest.override_item(node_name, {
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name="default:cobble"})
			minetest.check_single_for_falling(pos)
		end
	})
end

-- Add wear to tool, based on builtin/game/item.lua.
function quarry.add_wear(pos, digger, caps)
	local wielded = digger:get_wielded_item()
	local wdef = wielded:get_definition()
	local tp = wielded:get_tool_capabilities()
	local dp = minetest.get_dig_params(caps, tp)
	if not minetest.settings:get_bool("creative_mode") then
		wielded:add_wear(dp.wear)
		if wielded:get_count() == 0 and wdef.sound and wdef.sound.breaks then
			minetest.sound_play(wdef.sound.breaks, {pos = pos, gain = 0.5})
		end
	end
	digger:set_wielded_item(wielded)
end

-- Node needs two faces to air to be able to quarry.
function quarry.valid_quarry_config(pos)
	local sum = 0
	if minetest.get_node(vector.add(pos, {x=1,y=0,z=0})).name == "air" then sum = sum + 1 end
	if minetest.get_node(vector.add(pos, {x=0,y=1,z=0})).name == "air" then sum = sum + 1 end
	if minetest.get_node(vector.add(pos, {x=0,y=0,z=1})).name == "air" then sum = sum + 1 end
	if minetest.get_node(vector.add(pos, {x=-1,y=0,z=0})).name == "air" then sum = sum + 1 end
	if minetest.get_node(vector.add(pos, {x=0,y=-1,z=0})).name == "air" then sum = sum + 1 end
	if minetest.get_node(vector.add(pos, {x=0,y=0,z=-1})).name == "air" then sum = sum + 1 end
	return sum >= 2
end

-- For nodes that can be mortared (e.g., cobble, cut_stone, cut_stone_block).
function quarry.mortar_on_dig(dest_name, group_wear)
	return function(pos, node, digger)
		if not minetest.is_protected(pos, digger) then
			local tool = digger:get_wielded_item():get_name()
			if tool == "quarry:trowel_and_mortar" then
				local oldnode = minetest.get_node(pos)
				minetest.swap_node(pos, {name = dest_name, param2 = oldnode.param2})
				quarry.add_wear(pos, digger, group_wear)
			else
				minetest.node_dig(pos, node, digger)
			end
		end
	end
end

function quarry.override_mortar(init_name, dest_name, group_over, group_wear)
	minetest.override_item(init_name, {
		groups = group_over,
		on_dig = quarry.mortar_on_dig(dest_name, group_wear)
	})
end

-- For nodes that can only be pickaxed (e.g., stonebrick)
function quarry.pick_on_dig(dest_name, group_wear)
	return function(pos, node, digger)
		if not minetest.is_protected(pos, digger) then
			local oldnode = minetest.get_node(pos)
			minetest.swap_node(pos, {name = dest_name, param2 = oldnode.param2})
			quarry.add_wear(pos, digger, group_wear)
			minetest.check_single_for_falling(pos)
		end
	end
end

function quarry.override_pick(init_name, dest_name, group_wear)
	minetest.override_item(init_name, {
		on_dig = quarry.pick_on_dig(dest_name, group_wear)
	})
end

-- For nodes that can be quarry hammered or pickaxed (e.g., stone, stone_block)
function quarry.hammer_on_dig(dest_name, break_name, group_wear)
	return function(pos, node, digger)
		if not minetest.is_protected(pos, digger) then
			local tool = digger:get_wielded_item():get_name()
			local oldnode = minetest.get_node(pos)
			if tool == "quarry:stone_quarry_hammer" and quarry.valid_quarry_config(pos) then
				minetest.swap_node(pos, {name = dest_name, param2 = oldnode.param2})
			else  -- pickaxe node
				minetest.swap_node(pos, {name = break_name, param2 = oldnode.param2})
			end
			quarry.add_wear(pos, digger, group_wear)
			minetest.check_single_for_falling(pos)
		end
	end
end

function quarry.override_hammer(init_name, dest_name, break_name, group_wear)
	minetest.override_item(init_name, {
		on_dig = quarry.hammer_on_dig(dest_name, break_name, group_wear)
	})
end
