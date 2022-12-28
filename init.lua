-- Quarry Mechanics [quarry]
-- by David_G [kestral246@gmail.com]
-- 2022-12-27

-- This mod adds quarry mechanics to stone nodes.

-- Definitions made by this mod that other mods can use too
quarry = {}

-- Define functions.
dofile(minetest.get_modpath("quarry").."/functions.lua")

-- Stone overrides and new stone nodes.
dofile(minetest.get_modpath("quarry").."/stone.lua")

-- Tool overrides and new tools.
dofile(minetest.get_modpath("quarry").."/tools.lua")
