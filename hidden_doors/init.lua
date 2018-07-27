--[[

   Hidden Doors - Adds various wood, stone, etc. doors.

   Copyright (C) 2017-2018  Hamlet

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

]]--


--
-- General variables
--

local minetest_log_level = minetest.settings:get("debug_log_level")
local mod_load_message = "[Mod] Hidden Doors [v1.10.2] loaded."
local mod_path = minetest.get_modpath("hidden_doors")


-- Hidden Doors' operation mode
local hidden_doors_remover = minetest.settings:get_bool("hidden_doors_remover")

if not hidden_doors_remover then
   hidden_doors_remover = false
end

if (hidden_doors_remover == false) then
   dofile(mod_path .. "/main.lua")
end

if (hidden_doors_remover == true) then
   dofile(mod_path .. "/remover.lua")
end


--
-- Minetest engine debug logging
--

if (minetest_log_level == nil) or (minetest_log_level == "action") or
	(minetest_log_level == "info") or (minetest_log_level == "verbose") then

	minetest.log("action", mod_load_message)
end
