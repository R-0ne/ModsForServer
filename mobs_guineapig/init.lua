
local S = mobs.intllib

-- Guinea Pig by CloudyProton
-- SOUNDS FROM quetzalcontla, freesounds.org

mobs:register_mob("mobs_guineapig:guineapig", {
stepheight = 0.6,
	type = "animal",
	passive = true,
	reach = 1,
	hp_min = 1,
	hp_max = 4,
	armor = 200,
	collisionbox = {-0.2, -0.11, -0.2,  0.2, 0.1, 0.2},
	visual = "mesh",
	mesh = "mobs_guinea_pig.b3d",
	drawtype = "front",
	textures = {
		{"mobs_guineapig_brindle.png"},
		{"mobs_guineapig_golden.png"},
		{"mobs_guineapig_brown.png"},
	},
	sounds = { 
		random = "mobs_guinea_pig",
	},
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 3,
	runaway = true,
	runaway_from = {
		"mobs_animal:pumba",
		"mobs_animal:kitten",
		"mobs_animal:cow",
		"mobs_animal:sheep",
		"player",
	},
	jump = true,
	jump_height = 5,
	drops = {
		--{name = "mobs_guineapig:", chance = 1, min = 1, max = 1},
	},
	water_damage = 1,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 15,
		stand_start = 1,
		stand_end = 1,
		walk_start = 2,
		walk_end = 30,
	},
	follow = {
		"default:grass_1",
		"default:dry_grass_1",
		"default:junglegrass",
		"default:leaves",
		"default:jungleleaves",
		"default:pine_leaves",
		"default:acacia_leaves",
		"default:aspen_leaves",
		"flowers:dandelion_white",
		"flowers:dandelion_yellow",
		"flowers:tulip",
		"flowers:geranium",
		"flowers:viola",
		"flowers:rose",
		"default:apple",
	},
	view_range = 8,
	replace_rate = 10,
	replace_what = {"default:grass_4", "default:grass_5", "default:grass_6"},
	replace_with = "air",
	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 4, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 30, 50, 80, false, nil) then return end

	end,
	attack_type = "dogfight",
	damage = 5,
})


local spawn_on = "default:dirt_with_grass"


mobs:spawn({
	name = "mobs_guineapig:guineapig",
	nodes = {spawn_on},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 8000,
	min_height = 20,
	max_height = 400,
	day_toggle = true,
})


mobs:register_egg("mobs_guineapig:guineapig", S("Guinea Pig"), "mobs_guineapig_inv.png", 0)


mobs:alias_mob("mobs:guineapig", "mobs_guineapig:guineapig")
