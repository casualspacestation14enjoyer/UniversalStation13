/obj/structure/bed/chair/bench // because we are too good for chairs
	name = "bench"
	desc = "For all of your sitting needs."
	icon_state = "bench"
	base_icon = "bench"
	anchored = TRUE

/obj/machinery/clock
	name = "train-station clock"
	icon = 'icons/obj/32x64.dmi'
	icon_state = "clock"
	desc = "I wonder what time it is..."
	anchored = TRUE
	density = TRUE

/obj/structure/trashbin
	name = "trash can"
	desc = "Just a normal trash can."
	icon = 'icons/obj/furniture.dmi'
	icon_state = "bin"
	density = TRUE
	anchored = TRUE

/obj/structure/trashbin/attackby(obj/item/O, mob/user)
	. = ..()
	if(user && O)
		if(!user.unEquip(O, src)) //for some reason this allows it to actually move, hilarious
			return
		if(user.a_intent == I_HURT)
			visible_message(SPAN_WARNING("[user] dumps \the [O] into \the [src], ANGRILY!"))
			O.forceMove(src)
			return
		O.forceMove(src)

/obj/structure/trashbin/attack_hand(mob/user)
	. = ..()
	if(contents.len)
		var/obj/item/random_item = pick(contents)
		random_item.dropInto(loc)
		user.visible_message(SPAN_NOTICE("[user] grabs [random_item] out from \the [src], gross."), SPAN_NOTICE("You grab [random_item] out from \the [src], gross!"))

/obj/machinery/clock/examine(mob/user, distance)
	. = ..()
	to_chat(user, SPAN_NOTICE("The time is [stationtime2text()]."))

/obj/machinery/vending/sovietsoda/breen // too lazy
	name = "Dr. Breen's Private Reserve"
	desc = "I wonder who this Dr. Breen is..."
	icon = 'icons/obj/32x64.dmi'
	icon_state = "breen_vend"
	products = list(/obj/item/reagent_containers/food/drinks/cans/breen = 50)

/obj/machinery/vending/sovietsoda/breen/Initialize(mapload, d, populate_parts)
	. = ..()
	icon_deny = initial(icon_state)
	icon_vend = initial(icon_state)

/obj/item/reagent_containers/food/drinks/cans/breen
	name = "canned water"
	desc = "Water. In a can! Provided to you by Dr. Breen."
	icon_state = "breen_blu"
	center_of_mass = "x=16;y=10"

/obj/item/reagent_containers/food/drinks/cans/breen/New()
	. = ..()
	reagents.add_reagent(/datum/reagent/water/breen, 30)

/obj/structure/phone_booth
	name = "phone booth"
	desc = "Looks like you could phone someone with this... As if!"
	icon = 'icons/obj/furniture.dmi'
	icon_state = "phone"
	anchored = TRUE
	density = TRUE
	var/random_num = TRUE
	var/phone_number // TODO: make phones actually be phonable

/obj/structure/phone_booth/Initialize()
	. = ..()
	if(random_num)
		phone_number = "[rand(1, 999)]-[rand(10, 99)]"

/obj/structure/traffic_pole
	name = "traffic pole"
	desc = "Used to stop traffic. Used to."
	icon = 'icons/obj/furniture.dmi'
	icon_state = "road_pole"
	anchored = TRUE
	density = FALSE

/obj/structure/cmb_ffprojector // indestructible version
	name = "forcefield projector"
	desc = "Used by the Combine to make gates or just keep people out of places they don't want them to be. This one looks pretty sturdy..."
	icon = 'icons/turf/walls.dmi'
	icon_state = "cmb_forcefieldON"
	breakable = FALSE
	density = TRUE
	anchored = TRUE

/obj/structure/cmb_ffprojector/off
	desc = "This one is off."
	icon_state = "cmb_forceifledOFF"

/obj/structure/cmb_forcefield
	name = "forcefield"
	desc = "Used by the Combine to make gates or just keep people out of places they don't want them to be."
	icon = 'icons/turf/walls.dmi'
	icon_state = "cmb_forcefield"
	breakable = FALSE
	density = TRUE
	anchored = TRUE

/obj/structure/cmb_forcefield/CanPass(atom/movable/mover, turf/target, height, air_group)
	return FALSE

/obj/structure/train_track
	name = "train track"
	icon = 'icons/obj/224x32.dmi'
	desc = "This is what trains move on."
	icon_state = "track"
	anchored = TRUE

/obj/structure/street_light
	name = "street light"
	icon = 'icons/obj/street.dmi'
	desc = "It is on seemingly all the time."
	icon_state = "streetlamp1"

	density = TRUE
	anchored = TRUE

	layer = ABOVE_HUMAN_LAYER

	/// Brightness of the light when on. Can be negative.
	var/lamp_brightness = 1
	/// Inner range of the light when on. Can be negative
	var/lamp_inner_range = 0.6
	/// Outer range of the light when on. Can be negative.
	var/lamp_outer_range = 7.5

/obj/structure/street_light/Initialize()
	. = ..()
	set_light(lamp_brightness, lamp_inner_range, lamp_outer_range)

/obj/item/gnome
	name = "gnome"
	desc = "Hopefully this one isn't TOO aware..."
	icon_state = "gnome"
	var/supercharged = FALSE

/obj/item/gnome/supercharged
	supercharged = TRUE

/obj/item/gnome/attack(mob/living/M, mob/living/user, target_zone)
	. = ..()
	var/mob/living/carbon/human/victim = M
	if(supercharged)
		victim.gib()
		to_world(SPAN_DANGER("<font size='4'>[pick("ANOTHER POOR SOUL GOT GNOMED.", "HAAH-HE!")]</font>"))

/obj/structure/rustcar
	name = "rusted derelict"
	desc = "A metal chassis, corroded and forgotten."
	icon = './icons/medium_vehicles.dmi'
	icon_state = "derelict"
	bound_width = 64
	anchored = TRUE
	density = TRUE
	obj_flags = ATOM_FLAG_CLIMBABLE

/obj/structure/rustcar/Initialize()
	. = ..()
	color = get_random_colour()

// THE FACTORY.

/obj/item/plastic_block
	name = "block of plastic"
	desc = "A block of synthetic plastic, you doubt this is something you can feed into a fabricator."
	icon_state = "plastic_block"

/obj/item/plastic_sheet
	name = "sheet of plastic"
	desc = "A sheet of plastic, looks like it's ready to be molded."
	icon_state = "plate"

/obj/item/ingredient_cube
	name = "cube of ingredients"
	desc = "Not to be eaten. Add it to an unfinished ration packet to seal it up. No one is sure what it is but for some reason it adds whole packets of food, probably condensed matter?"
	icon = 'icons/obj/food.dmi'
	icon_state = "ingredientcube"

/obj/structure/block_crate
	name = "crate of plastic blocks"
	icon_state = "crate"
	icon = 'icons/obj/storage.dmi'
	anchored = TRUE
	density = TRUE

/obj/structure/ingredient_crate
	name = "crate of ingredient cubes"
	icon_state = "crate"
	icon = 'icons/obj/storage.dmi'
	anchored = TRUE
	density = TRUE

/obj/structure/ingredient_crate/attack_hand(mob/user)
	. = ..()
	var/obj/item/ingredient_cube/cube = new(get_turf(loc))
	user.put_in_hands(cube)

/obj/structure/block_crate/attack_hand(mob/user)
	. = ..()
	var/obj/item/plastic_block/blcok = new(get_turf(loc)) // misspelled, lol!
	user.put_in_hands(blcok)

/obj/item/citizen_ration_unfinished
	name = "unfinished citizen ration"
	desc = "Not filled with food yet."
	icon = 'icons/obj/food.dmi'
	icon_state = "ration1"

/obj/item/citizen_ration_unfinished/attackby(obj/item/W, mob/user)
	. = ..()
	if(istype(W, /obj/item/ingredient_cube))
		var/obj/item/citizen_ration_finished/czf = new(get_turf(user.loc))
		user.put_in_hands(czf)
		qdel(W)
		qdel(src)

/obj/item/citizen_ration_finished
	name = "finished citizen ration"
	desc = "Ready to be shipped off for quota."
	icon = 'icons/obj/food.dmi'
	icon_state = "ration"

/obj/machinery/factorium
	icon = 'icons/obj/factorymachines.dmi'
	desc = "What the fuck is this?"
	density = TRUE
	anchored = TRUE
	var/active = FALSE
	bound_width = 64

/obj/machinery/factorium/attack_hand(mob/user)
	. = ..()
	var/mob/living/carbon/human/human = user
	if(active)
		human.apply_damage(200, BRUTE, human.hand ? BP_L_HAND : BP_R_HAND)
		to_chat(user, SPAN_DANGER("<span class='large'>AAAAAAAAAAHHH!!!</span>"))

/obj/machinery/factorium/plasticinizer
	name = "plastic cutting machine"
	desc = "Used for turning plastic into a sheet."
	icon_state = "plastic"

/obj/machinery/factorium/plasticinizer/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/plastic_block))
		if(!user.unEquip(I, src))
			return
		qdel(I)
		active = TRUE
		flick("plastic-W", src)
		sleep(17)
		active = FALSE
		var/sheet = new /obj/item/plastic_sheet(get_turf(loc))
		user.put_in_hands(sheet)

/obj/machinery/factorium/molder
	name = "plastic molding machine"
	desc = "Used for turning plastic sheets into ration packs."
	icon_state = "molder"

/obj/machinery/factorium/molder/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/plastic_sheet))
		if(!user.unEquip(I, src))
			return
		qdel(I)
		active = TRUE
		flick("molder-W", src)
		sleep(5)
		active = FALSE
		new /obj/item/citizen_ration_unfinished(get_turf(loc))

/var/global/ration_quota = 10 // beggining quota

/obj/item/coupon
	name = "coupon"
	desc = "Stuff this into a reclamation machine to get materials and such."
	icon = 'icons/obj/items.dmi'
	icon_state = "efundcard"
	w_class = ITEM_SIZE_TINY

/obj/machinery/couponreclaim
	name = "coupon reclamation device"
	desc = "Stuff a coupon in here to get STEEL or GLASS."
	icon = 'icons/obj/computer.dmi'
	anchored = TRUE
	icon_state = "coupon"

/obj/machinery/couponreclaim/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/coupon))
		var/choice = input(user, "Choose a prize for coupon redeeming") in list("STEEL", "GLASS")
		switch(choice)
			if("STEEL")
				new /obj/item/stack/material/steel/fifty(get_turf(src.loc))
				qdel(I)
			if("GLASS")
				new /obj/item/stack/material/glass/fifty(get_turf(src.loc))
				qdel(I)

/obj/machinery/deliverer
	name = "delivery machine"
	desc = "Used to finish ration quota. Sends the rations off to a different factory in a different city to complete the packaging process."
	icon = 'icons/obj/teleporter.dmi'
	icon_state = "pad"
	anchored = TRUE
	var/delivered = 0

/obj/machinery/deliverer/attack_hand(mob/user)
	. = ..()
	for(var/obj/item/citizen_ration_finished/H in get_turf(src.loc))
		delivered++
		playsound(get_turf(src), 'sound/weapons/emitter2.ogg', 25, TRUE)
		flick("pad_active", src)
		qdel(H)
	if(delivered >= ration_quota)
		ration_quota += 10
		delivered = 0
		var/obj/item/coupon/coupon = new
		user.put_in_hands(coupon)
		playsound(get_turf(src), 'sound/weapons/flash.ogg', 25, TRUE)
		audible_message(SPAN_BOLD("QUOTA COMPLETE. COUPON PRINTED. GOOD JOB, LOYALISTS."))

/obj/structure/fakestairs
	name = "stairs"
	desc = "They lead to somewhere, probably."
	icon = 'icons/obj/stairs.dmi'
	density = FALSE
	anchored = TRUE
	layer = RUNE_LAYER

/obj/machinery/ration_dispenser
	name = "ration dispenser"
	desc = "Just press a button and get a ration, it is that easy! Probably made like that so you don't starve to death."
	icon_state = "ration_dispenser"

/obj/machinery/ration_dispenser/attack_hand(mob/user)
	. = ..()
	var/mob/living/carbon/human/H = user
	if(H.social_class == SOCIAL_CLASS_AC) return
	src.visible_message(SPAN_NOTICE("\The [src] begins dispensing a ration for [H]."))
	if(do_after(H, 5 SECONDS, src))
		var/to_dispense
		switch(H.social_class)
			if(SOCIAL_CLASS_AC)
				to_dispense = /obj/item/storage/mre/biotic
			if(SOCIAL_CLASS_LOW)
				to_dispense = /obj/item/storage/mre/standard
			if(SOCIAL_CLASS_MED, SOCIAL_CLASS_COM)
				to_dispense = /obj/item/storage/mre/priority
			if(SOCIAL_CLASS_MAX, SOCIAL_CLASS_HIGH)
				to_dispense = /obj/item/storage/mre/service
		if(to_dispense)
			var/obj/item/storage/mre/ration = new to_dispense
			H.put_in_hands(ration)
			flick("[icon_state]-w",src)
			src.visible_message(SPAN_NOTICE("\The [src] dispenses \a [ration]."))

// rations

/obj/item/storage/mre/biotic
	name = "biotic ration"
	desc = "A Combine-isssued ration for biotics, essentially only for the enslaved vortigaunts."
	icon_state = "ration_biotic"
	meal_desc = null
	main_meal = /obj/item/reagent_containers/food/snacks/chocolatebar/combine
	startswith = list(
		/obj/item/reagent_containers/food/snacks/chocolateegg/protein_combine,
		/obj/item/reagent_containers/food/drinks/cans/breen
	)

/obj/item/storage/mre/standard
	name = "standard ration"
	desc = "A Combine-isssued ration for regular citizens."
	icon_state = "ration_standard"
	meal_desc = null
	main_meal = /obj/item/reagent_containers/food/snacks/chocolatebar/combine/plus
	startswith = list(
		/obj/item/reagent_containers/food/snacks/chocolateegg/protein_combine,
		/obj/item/reagent_containers/food/drinks/cans/breen
	)

/obj/item/storage/mre/priority
	name = "priority ration"
	desc = "A Combine-isssued ration for better more reputable citizens, Civil Protection and CWU members and such."
	icon_state = "ration_priority"
	meal_desc = null
	main_meal = /obj/item/reagent_containers/food/snacks/chocolatebar/combine/plusplus
	startswith = list(
		/obj/item/reagent_containers/food/snacks/chocolateegg/protein_combine,
		/obj/item/reagent_containers/food/drinks/cans/breen
	)

/obj/item/storage/mre/service
	name = "service ration"
	desc = "A Combine-isssued ration for very reputable city-dwellers, City Administrators and members of the people that keep this city running."
	icon_state = "ration_service"
	meal_desc = null
	main_meal = /obj/item/reagent_containers/food/snacks/chocolatebar/combine/deluxe
	startswith = list(
		/obj/item/reagent_containers/food/snacks/chocolateegg/protein_combine,
		/obj/item/reagent_containers/food/drinks/cans/breen
	)

// ration inside meals

/obj/item/reagent_containers/food/snacks/chocolatebar/combine
	name = "combine bar of unidentifiable food"
	desc = "The wrapper is eatable. Not edible. But you're gonna eat it anyway."
	icon_state = "combine_bar"
	nutriment_desc = list("slop" = 5)

/obj/item/reagent_containers/food/snacks/chocolatebar/combine/plus
	name = "combine bar of cardboard-like material"
	desc = "The wrapper is eatable. Not edible. But you're gonna eat it anyway."
	icon_state = "combine_bar_plus"
	nutriment_amt = 3
	bitesize = 1
	nutriment_desc = list("slop" = 5)

/obj/item/reagent_containers/food/snacks/chocolatebar/combine/plusplus
	name = "combine bar of nutrients"
	desc = "The wrapper is edible. It dooesn't look it would taste good."
	icon_state = "combine_bar_plusplus"
	nutriment_amt = 4
	bitesize = 1
	nutriment_desc = list("slop" = 5)

/obj/item/reagent_containers/food/snacks/chocolatebar/combine/deluxe
	name = "combine bar of food"
	desc = "The wrapper is edible."
	icon_state = "combine_bar_deluxe"
	nutriment_amt = 5
	bitesize = 1
	nutriment_desc = list("artificial chocolate" = 5)

/obj/item/reagent_containers/food/snacks/chocolateegg/protein_combine
	name = "combine protein block"
	desc = "The wrapper is slimy. What the fuck?"
	icon_state = "combine_protein"
	nutriment_amt = 2
	bitesize = 1
	nutriment_desc = list("protein" = 5)
