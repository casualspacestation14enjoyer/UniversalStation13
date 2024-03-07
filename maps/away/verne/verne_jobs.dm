/datum/job/submap/CTI_pilot
	title = "CTI Pilot"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/verne/pilot
	supervisors = "You have no supervisors."
	info = "You will be told, hopefully."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN)
	required_language = LANGUAGE_COMMON
	min_skill = list(
		SKILL_WEAPONS = SKILL_TRAINED,
		SKILL_PILOT   = SKILL_TRAINED,
	)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
	)
	skill_points = 20//skills copied from Torch pilot + gun

/datum/job/submap/CTI_engineer
	title = "CTI Engineer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/verne/engineer
	supervisors = "You have no supervisors."
	info = "You will be told, hopefully."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN)
	required_language = LANGUAGE_COMMON
	min_skill = list(
		SKILL_COMPUTER     = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_ELECTRICAL   = SKILL_BASIC,
		SKILL_ATMOS        = SKILL_BASIC,
		SKILL_ENGINES      = SKILL_BASIC,
	)

	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL   = SKILL_MAX,
		SKILL_ATMOS        = SKILL_MAX,
		SKILL_ENGINES      = SKILL_MAX,
	)
	skill_points = 20//skills copied from torch eng

/datum/job/submap/CTI_Undergraduate_Xenoscience_Researcher
	title = "CTI Undergraduate science Researcher"
	supervisors = "You have no supervisors."
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/verne/researcher
	info = "You are fleeing, and that's all you know."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN)
	required_language = LANGUAGE_COMMON
	min_skill = list(
		SKILL_COMPUTER    = SKILL_BASIC,
		SKILL_DEVICES     = SKILL_BASIC,
		SKILL_SCIENCE     = SKILL_TRAINED,
	)

	max_skill = list(
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
	)
	skill_points = 20//skills copied from Torch sci

#define VERNE_OUTFIT_JOB_NAME(job_name) ("CTI Research Vessel - Job - " + job_name)
/decl/hierarchy/outfit/job/verne
	hierarchy_type = /decl/hierarchy/outfit/job/verne
	pda_type = null
	pda_slot = null
	id_types = list(/obj/item/card/id/verne)
	l_ear = /obj/item/device/radio/headset/map_preset/verne

/decl/hierarchy/outfit/job/verne/pilot
	name = VERNE_OUTFIT_JOB_NAME("Pilot")
	uniform = /obj/item/clothing/under/suit_jacket/navy
	shoes = /obj/item/clothing/shoes/dress/caretakershoes
	belt = /obj/item/storage/belt/holster/general
	r_pocket = /obj/item/gun/energy/gun/small
	l_pocket = /obj/item/crowbar/prybar

/decl/hierarchy/outfit/job/verne/engineer
	name = VERNE_OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full
	r_pocket = /obj/item/device/radio/map_preset/verne
	l_pocket = /obj/item/crowbar/prybar

/decl/hierarchy/outfit/job/verne/engineer/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/storage/backpack/industrial
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/storage/backpack/satchel/eng
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/engi

/decl/hierarchy/outfit/job/verne/researcher
	name = VERNE_OUTFIT_JOB_NAME("Undergraduate Xenoscience Researcher")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	suit = /obj/item/clothing/suit/storage/toggle/hoodie/cti
	shoes = /obj/item/clothing/shoes/black

/obj/effect/submap_landmark/spawnpoint/CTI_pilot
	name = "CTI Pilot"

/obj/effect/submap_landmark/spawnpoint/CTI_engineer
	name = "CTI Engineer"

/obj/effect/submap_landmark/spawnpoint/CTI_Undergraduate_Xenoscience_Researcher
	name = "CTI Undergraduate Xenoscience Researcher"

#undef VERNE_OUTFIT_JOB_NAME
