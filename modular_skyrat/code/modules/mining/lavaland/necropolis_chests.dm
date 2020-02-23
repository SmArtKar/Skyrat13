//boss chests
/obj/structure/closet/crate/necropolis/bubblegum/PopulateContents()
	new /obj/item/clothing/suit/space/hostile_environment(src)
	new /obj/item/clothing/head/helmet/space/hostile_environment(src)
	new /obj/item/borg/upgrade/modkit/shotgun(src)
	var/loot = rand(1,3)
	switch(loot)
		if(1)
			new /obj/item/mayhem(src)
		if(2)
			new /obj/item/blood_contract(src)
		if(3)
			new /obj/item/gun/magic/staff/spellblade(src)

/obj/structure/closet/crate/necropolis/dragon/PopulateContents()
	new /obj/item/borg/upgrade/modkit/knockback(src)
	var/loot = rand(1,4)
	switch(loot)
		if(1)
			new /obj/item/melee/ghost_sword(src)
		if(2)
			new /obj/item/lava_staff(src)
		if(3)
			new /obj/item/book/granter/spell/sacredflame(src)
			new /obj/item/gun/magic/wand/fireball(src)
		if(4)
			new /obj/item/dragons_blood(src)

/obj/structure/closet/crate/necropolis/colossus/PopulateContents()
	var/list/choices = subtypesof(/obj/machinery/anomalous_crystal)
	var/random_crystal = pick(choices)
	new random_crystal(src)
	new /obj/item/organ/vocal_cords/colossus(src)
	new /obj/item/borg/upgrade/modkit/bolter(src)

//normal chests
/obj/structure/closet/crate/necropolis/tendril/PopulateContents()
	var/loot = rand(1,28)
	switch(loot)
		if(1)
			new /obj/item/shared_storage/red(src)
		if(2)
			new /obj/item/clothing/suit/space/hardsuit/cult(src)
		if(3)
			new /obj/item/soulstone/anybody(src)
		if(4)
			new /obj/item/katana/cursed(src)
		if(5)
			new /obj/item/clothing/glasses/godeye(src)
		if(6)
			new /obj/item/reagent_containers/glass/bottle/potion/flight(src)
		if(7)
			new /obj/item/pickaxe/diamond(src)
		if(8)
			if(prob(50))
				new /obj/item/disk/design_disk/modkit_disc/resonator_blast(src)
			else
				new /obj/item/disk/design_disk/modkit_disc/rapid_repeater(src)
		if(9)
			new /obj/item/rod_of_asclepius(src)
		if(10)
			new /obj/item/organ/heart/cursed/wizard(src)
		if(11)
			new /obj/item/ship_in_a_bottle(src)
		if(12)
			new /obj/item/clothing/suit/space/hardsuit/ert/paranormal/beserker(src)
		if(13)
			new /obj/item/jacobs_ladder(src)
		if(14)
			new /obj/item/nullrod/scythe/talking(src)
		if(15)
			new /obj/item/nullrod/armblade(src)
		if(16)
			new /obj/item/guardiancreator(src)
		if(17)
			if(prob(50))
				new /obj/item/disk/design_disk/modkit_disc/mob_and_turf_aoe(src)
			else
				new /obj/item/disk/design_disk/modkit_disc/bounty(src)
		if(18)
			new /obj/item/warp_cube/red(src)
		if(19)
			new /obj/item/wisp_lantern(src)
		if(20)
			new /obj/item/immortality_talisman(src)
		if(21)
			new /obj/item/gun/magic/hook(src)
		if(22)
			new /obj/item/voodoo(src)
		if(23)
			new /obj/item/grenade/clusterbuster/inferno(src)
		if(24)
			new /obj/item/reagent_containers/food/drinks/bottle/holywater/hell(src)
			new /obj/item/clothing/suit/space/hardsuit/ert/paranormal/inquisitor(src)
		if(25)
			new /obj/item/book/granter/spell/summonitem(src)
		if(26)
			new /obj/item/book_of_babel(src)
		if(27)
			new /obj/item/borg/upgrade/modkit/lifesteal(src)
			new /obj/item/bedsheet/cult(src)
		if(28)
			new /obj/item/clothing/neck/necklace/memento_mori(src)
		if(29)
			new /obj/item/gun/ballistic/shotgun/boltaction/enchanted(src)
		if(30)
			new /obj/item/gun/magic/staff/door(src)
		if(31)
			new /obj/item/katana/necropolis(src)

/obj/item/katana/necropolis
	force = 30 //Wouldn't want a miner walking around with a 40 damage melee around now, would we?

/obj/structure/closet/crate/necropolis/tendril/debug
	loot_pool = list(list(/obj/item/borg/upgrade/modkit/lifesteal, /obj/item/bedsheet/cult),
					list(/obj/item/reagent_containers/food/drinks/bottle/holywater/hell, /obj/item/clothing/suit/space/hardsuit/ert/paranormal/inquisitor))