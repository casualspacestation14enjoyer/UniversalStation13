/decl/hierarchy/outfit/job/citizen
	name = OUTFIT_JOB_NAME("Citizen")

	uniform = /obj/item/clothing/under/color/blue
	shoes = /obj/item/clothing/shoes/brown
	l_ear = null

	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/civilian)
	back = /obj/item/storage/backpack/satchel/grey
	pda_type = null

/decl/hierarchy/outfit/job/citizen/doctor
	name = OUTFIT_JOB_NAME("Doctor")
	uniform = /obj/item/clothing/under/fw_uniform
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/blue
	id_types = list(/obj/item/card/id/civilian/doctor)

/decl/hierarchy/outfit/job/citizen/worker
	name = OUTFIT_JOB_NAME("Factory Worker")

	uniform = /obj/item/clothing/under/fw_uniform

	id_types = list(/obj/item/card/id/civilian/worker)

/decl/hierarchy/outfit/job/overseer
	name = OUTFIT_JOB_NAME("CWU Overseer")
	uniform = /obj/item/clothing/under/fo_uniform
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/tactical

/decl/hierarchy/outfit/job/cp
	hierarchy_type = /decl/hierarchy/outfit/job/cp
	l_ear = /obj/item/device/radio/headset/headset_sec/civil_protection
	gloves = /obj/item/clothing/gloves/guards
	uniform = /obj/item/clothing/under/cp_uniform
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel/sec
	belt = /obj/item/storage/belt/holster/security/fullusp
	l_pocket = /obj/item/handcuffs/cable
	pda_type = /obj/item/modular_computer/pda
	id_types = list(/obj/item/card/id/security)
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/cp/civilprotection
	name = OUTFIT_JOB_NAME("Civil Protection Officer")

	suit = /obj/item/clothing/suit/armor/vest/old/security/cpO
	mask = /obj/item/clothing/mask/cpO

/decl/hierarchy/outfit/job/cp/elite
	name = OUTFIT_JOB_NAME("Civil Protection Elite")

	suit = /obj/item/clothing/suit/armor/vest/old/security/cpE
	mask = /obj/item/clothing/mask/cpE
	suit_store = /obj/item/gun/projectile/automatic/assault_rifle/mp7
	backpack_contents = list(/obj/item/ammo_magazine/rifle/mp7 = 4)

/decl/hierarchy/outfit/job/cp/rankleader
	name = OUTFIT_JOB_NAME("Civil Protection Rank Leader")

	suit = /obj/item/clothing/suit/armor/vest/old/security/cpRL
	mask = /obj/item/clothing/mask/cpRL
	suit_store = /obj/item/gun/projectile/automatic/assault_rifle/mp7
	backpack_contents = list(/obj/item/ammo_magazine/rifle/mp7 = 4)

/decl/hierarchy/outfit/job/cp/overwatch_elite
	name = OUTFIT_JOB_NAME("Overwatch Elite")

	suit = /obj/item/clothing/suit/armor/vest/old/security/owE
	mask = /obj/item/clothing/mask/owE
	suit_store = /obj/item/gun/projectile/automatic/assault_rifle/osipr

/decl/hierarchy/outfit/job/earthadministrator
	name = OUTFIT_JOB_NAME("Earth Administrator")

	back = /obj/item/storage/backpack/satchel/sec
	uniform = /obj/item/clothing/under/ca_uniform
	shoes = /obj/item/clothing/shoes/laceup
	l_ear = /obj/item/device/radio/headset/headset_sec/civil_protection
