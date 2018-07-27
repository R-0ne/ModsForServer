-- Mod: sandwiches

minetest.register_alias("sandwiches:meat_sandwich","sandwiches:ham_sandwich")
minetest.register_alias("sandwiches:nutella_block","sandwiches:acorn:nutella_block")

-- NODES --
if minetest.get_modpath ("moretrees") then
    minetest.register_node("sandwiches:acorn_nutella_block", {
		description = "Nutella block",
		groups = {oddly_breakable_by_hand = 2, misc_sandwich = 1, not_in_creative_inventory=1},
		paramtype2 = "facedir",
		tiles = {"nutella_block_top.png",
			"nutella_block_bottom.png",
			"nutella_block_side.png",
			"nutella_block_side.png",
			"nutella_block_side.png",
			"nutella_block_front.png"}
	})
end
-- ITEMS --

minetest.register_craftitem("sandwiches:bread_slice", {
    description = "Bread slice",
    on_use = minetest.item_eat(1),
    groups = {food_sandwich = 1, misc_sandwich = 1},
    inventory_image = "bread_slice.png"
})

minetest.register_craftitem("sandwiches:bread_crumbs", {
    description = "Bread crumbs",
    on_use = minetest.item_eat(1),
    groups = {food_sandwich = 1, misc_sandwich = 1},
    inventory_image = "bread_crumbs.png"
})

minetest.register_craftitem("sandwiches:american_sandwich", {
    description = "American sandwich",
    on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "american_sandwich.png"
})

minetest.register_craftitem("sandwiches:veggie_sandwich", {
    description = "Veggie sandwich",
    on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "veggie_sandwich.png"
})

minetest.register_craftitem("sandwiches:ham_sandwich", {
    description = "Ham sandwich",
    on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "ham_sandwich.png"
})

minetest.register_craftitem("sandwiches:sand_sandwich", {
    description = "Sand sandwich ... Ouch!",
    on_use = minetest.item_eat(5),
    groups = {food_sandwich = 1},
    inventory_image = "sand_sandwich.png"
})

minetest.register_craftitem("sandwiches:sweet_sandwich", {
    description = "Sweet sandwich",
    on_use = minetest.item_eat(8, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "sweet_sandwich.png"
})

minetest.register_craftitem("sandwiches:triple_mega_sandwich", {
    description = "Triple mega sandwich",
    on_use = minetest.item_eat(11, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "triple_mega_sandwich.png"
})
if minetest.get_modpath ("moretrees") then
	minetest.register_craftitem("sandwiches:nutella_sandwich", {
		description = "Nutella sandwich",
		on_use = minetest.item_eat(8, "sandwiches:bread_crumbs"),
		groups = {food_sandwich = 1},
		inventory_image = "nutella_sandwich.png"
	})
end

minetest.register_craftitem("sandwiches:italian_sandwich", {
	description = "Italian sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "italian_sandwich.png"
})

minetest.register_craftitem("sandwiches:jam_sandwich", {
	description = "Jam sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "jam_sandwich.png"
})

-- NON SANDWICH ITEMS --

if minetest.get_modpath ("moretrees") then
	minetest.register_craftitem("sandwiches:acorn_nutella", {
		description = "Acorn nutella",
		on_use = minetest.item_eat(2),
		groups = {food_sandwich = 1, misc_sandwich = 1},
		inventory_image = "acorn_nutella.png"
	})
end

minetest.register_craftitem("sandwiches:sweet_bread_pudding_raw", {
    description = "Uncooked sweet bread pudding",
    groups = {misc_sandwich = 1},
    inventory_image = "sweet_bread_pudding_raw.png"
})

minetest.register_craftitem("sandwiches:sweet_bread_pudding", {
    description = "Sweet bread pudding",
    on_use = minetest.item_eat(10),
    groups = {food_sandwich = 1, misc_sandwich = 1},
    inventory_image = "sweet_bread_pudding.png"
})

minetest.register_craftitem("sandwiches:raspberry_jam", {
    description = "Rasperry jam",
    on_use = minetest.item_eat(2),
    groups = {food_sandwich = 1, misc_sandwich = 1},
    inventory_image = "raspberry_jam.png"
})

minetest.register_craftitem("sandwiches:ham", {
    description = "Ham",
    on_use = minetest.item_eat(1),
    groups = {food_sandwich = 1, misc_sandwich = 1},
    inventory_image = "ham.png"
})



-- COOKING --

minetest.register_craft({
    type = "cooking",
    output = "sandwiches:sweet_bread_pudding",
    recipe = "sandwiches:sweet_bread_pudding_raw",
    cooktime = 20,
})

-- CRAFTS --

minetest.register_craft({
	output = "sandwiches:bread_slice 4",
	type = "shapeless",
	recipe = {"farming:bread"},
})

minetest.register_craft({
	output = "sandwiches:american_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"farming:cucumber", "mobs:cheese", "sandwiches:ham"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:veggie_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"farming:cucumber", "farming:tomato", "farming:potato"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:ham_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:ham", "sandwiches:ham", "sandwiches:ham"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:sand_sandwich",
	recipe = {
		{"default:sand", "default:sand", "default:sand"},
		{"default:cactus", "default:cactus", "default:cactus"},
		{"default:sand", "default:sand", "default:sand"},
	}
})

minetest.register_craft({
	output = "sandwiches:sweet_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"default:apple", "mobs:honey", "default:apple"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:triple_mega_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:american_sandwich", "sandwiches:ham_sandwich", "sandwiches:veggie_sandwich"},
		{"", "sandwiches:bread_slice", ""},
	}
})
if minetest.get_modpath ("moretrees") then
	minetest.register_craft({
		output = "sandwiches:nutella_sandwich",
		recipe = {
			{"", "sandwiches:bread_slice", ""},
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"},
			{"", "sandwiches:bread_slice", ""},
		}
	})
end

minetest.register_craft({
	output = "sandwiches:italian_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"flowers:mushroom_brown", "farming:tomato", "mobs:cheese"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:jam_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:raspberry_jam", "sandwiches:raspberry_jam", "sandwiches:raspberry_jam"},
		{"", "sandwiches:bread_slice", ""},
	}
})

-- NON SANDWICH CRAFTS --

if minetest.get_modpath ("moretrees") then
	minetest.register_craft({
		output = "sandwiches:acorn_nutella 5",
		recipe = {
			{"farming:cocoa_beans", "farming:cocoa_beans", "farming:cocoa_beans"},
			{"farming:sugar", "farming:sugar", "farming:sugar"},
			{"moretrees:acorn", "moretrees:acorn", "moretrees:acorn"},
		}
	})

	minetest.register_craft({
		output = "sandwiches:acorn_nutella_block",
		recipe = {
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"},
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"},
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"}
		}
	})
end

minetest.register_craft({
	output = "sandwiches:sweet_bread_pudding_raw",
	recipe = {
		{"sandwiches:bread_crumbs", "sandwiches:bread_crumbs", "sandwiches:bread_crumbs"},
		{"farming:raspberries", "farming:sugar", "farming:raspberries"},
		{"sandwiches:bread_crumbs", "sandwiches:bread_crumbs", "sandwiches:bread_crumbs"},
	}
})

minetest.register_craft({
	output = "sandwiches:raspberry_jam 5",
	recipe = {
		{"farming:raspberries", "farming:sugar", "farming:raspberries"},
		{"farming:sugar", "farming:raspberries", "farming:sugar"},
		{"farming:raspberries", "farming:sugar", "farming:raspberries"},
	}
})

minetest.register_craft({
	output = "sandwiches:ham 3",
	type = "shapeless";
	recipe = {"mobs:meat"},
})


