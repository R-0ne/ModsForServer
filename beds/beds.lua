
beds.colors = {
	{"black", "Black"},
	{"blue", "Blue"},
	{"brown", "Brown"},
	{"cyan", "Cyan"},
	{"dark_green", "Dark Green"},
	{"dark_grey", "Dark Grey"},
	{"green", "Green"},
	{"grey", "Grey"},
	{"magenta", "Magenta"},
	{"orange", "Orange"},
	{"pink", "Pink"},
 {"red", "Red"},
	{"violet", "Violet"},
	{"white", "White"},
	{"yellow", "Yellow"},
}

for _, row in ipairs(beds.colors) do
local color = row[1]
local desc = row[2]

-- Fancy shaped bed

local fancy_texture = "beds_bed_fancy_inv.png^wool_"..color..".png^beds_bed_fancy_inv.png^[makealpha:255,128,128"

beds.register_bed("beds:fancy_bed_" ..color, {
	description = "Fancy " ..desc.." Bed" ,
	inventory_image = fancy_texture,
	wield_image = fancy_texture,
	tiles = {
		bottom = {
			"beds_bed_top1_"..color..".png",
			"default_wood.png",
			"beds_bed_side1_"..color..".png",
			"beds_bed_side1_"..color..".png^[transformfx",
			"beds_bed_foot_"..color..".png"
		},
		top = {
			"beds_bed_top2_"..color..".png",
			"default_wood.png",
			"beds_bed_side2_"..color..".png",
			"beds_bed_side2_"..color..".png^[transformfx",
			"beds_bed_head.png",
		}
	},
	nodebox = {
		bottom = {
			{-0.5, -0.5, -0.5, -0.375, 0.125, -0.375},
			{0.375, -0.5, -0.5, 0.5, 0.125, -0.375},
			{-0.375, -0.0625, -0.46875, 0.375, 0.0625, -0.40625},
			{-0.4375, -0.375, -0.46875, 0.4375, -0.125, 0.5},
			{-0.375, -0.125, -0.375, 0.375, -0.0625, 0.5},
		},
		top = {
			{0.375, -0.5, 0.375, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.1875, 0.5},
			{-0.375, -0.0625, 0.40625, 0.375, 0.125, 0.46875},
			{-0.4375, -0.375, -0.5, 0.4375, -0.125, 0.46875},
			{-0.375, -0.125, -0.5, 0.375, -0.0625, 0.375},
		}
	},
	selectionbox = {-0.5, -0.5, -0.5, 0.5, 0.1875, 1.5},
	recipe = {
		{"", "", "group:stick"},
		{"wool:"..color, "wool:"..color, "wool:white"},
		{"group:wood", "group:wood", "group:wood"},
	},
})

-- Simple shaped bed

local simple_texture = "beds_bed_inv.png^wool_"..color..".png^beds_bed_inv.png^[makealpha:255,128,128"

beds.register_bed("beds:bed_" ..color, {
	description =  desc.. " Bed",
	inventory_image = simple_texture,
	wield_image = simple_texture,
	tiles = {
		bottom = {
			"wool_"..color..".png",
			"default_wood.png",
			"beds_bed_side_bottom_r_"..color..".png",
			"beds_bed_side_bottom_r_"..color..".png^[transformfx",
			"beds_bed_side_bottom_"..color..".png"
		},
		top = {
			"beds_bed_top_top_"..color..".png",
			"default_wood.png",
			"beds_bed_side_top_r_"..color..".png",
			"beds_bed_side_top_r_"..color..".png^[transformfx",
			"beds_bed_side_top.png",
		}
	},
	nodebox = {
		bottom = {-0.5, -0.5, -0.5, 0.5, 0.06, 0.5},
		top = {-0.5, -0.5, -0.5, 0.5, 0.06, 0.5},
	},
	selectionbox = {-0.5, -0.5, -0.5, 0.5, 0.06, 1.5},
	recipe = {
		{"wool:"..color, "wool:"..color, "wool:white"},
		{"group:wood", "group:wood", "group:wood"}
	},
})

-- Fuel
minetest.register_craft({
	type = "fuel",
	recipe = "beds:fancy_bed_"..color,
	burntime = 13,
})

minetest.register_craft({
	type = "fuel",
	recipe = "beds:bed_"..color,
	burntime = 12,
})

end

-- Aliases
minetest.register_alias("beds:fancy_bed_bottom", "beds:fancy_bed_red_bottom")
minetest.register_alias("beds:fancy_bed_top", "beds:fancy_bed_red_top")
minetest.register_alias("beds:bed_bottom", "beds:bed_red_bottom")
minetest.register_alias("beds:bed_top", "beds:bed_red_top")
