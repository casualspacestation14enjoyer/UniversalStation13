/obj/item/clothing/under/cp_uniform
	name = "civil protection uniform"
	desc = "The thing to keep under you while you wear that fancy armor."
	icon_state = "cpuniform"
	worn_state = "cpuniform"

/obj/item/clothing/suit/armor/vest/old/security/cpO
	name = "civil protection officer armored vest"
	desc = "The thing that actually keeps the bullets away from your vital organs!"
	icon_state = "cpO"

/obj/item/clothing/mask/cpO
	name = "civil protection officer gasmask"
	desc = "Standard issue, hides your face and protects it from bullets, the whole thing!"
	icon_state = "cpO_helm"
	unique_death = 'sound/voice/sec_death.ogg'
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/suit/armor/vest/old/security/cpE
	name = "civil protection elite armored vest"
	desc = "The thing that actually keeps the bullets away from your vital organs! This one is manufactured for CP Elites."
	icon_state = "cpE"

/obj/item/clothing/mask/cpE
	name = "civil protection elite gasmask"
	desc = "Standard issue, hides your face and protects it from bullets, the whole thing!"
	icon_state = "cpE_helm"
	unique_death = 'sound/voice/important_sec_death.ogg'
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/suit/armor/vest/old/security/cpRL
	name = "civil protection rank leader armored vest"
	desc = "The thing that actually keeps the bullets away from your vital organs! This one is manufactured for CP Rank Leaders."
	icon_state = "cpRL"

/obj/item/clothing/mask/cpRL
	name = "civil protection rank leader gasmask"
	desc = "Standard issue, hides your face and protects it from bullets, the whole thing!"
	icon_state = "cpRL_helm"
	unique_death = 'sound/voice/very_high_sec_death.ogg'
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED
		)

/obj/item/storage/belt/holster/security/fullusp/New()
	..()
	new /obj/item/reagent_containers/spray/pepper(src)
	new /obj/item/device/flash(src)
	new /obj/item/device/flashlight/maglight(src)
	new /obj/item/gun/projectile/pistol/usp(src)
	new /obj/item/ammo_magazine/pistol/double/usp(src)
	new /obj/item/ammo_magazine/pistol/double/usp(src)
	new /obj/item/melee/baton/loaded(src)
	update_icon()

/obj/item/clothing/mask/owE
	name = "overwatch elite gasmask"
	desc = "Anticitizen One detected, bearing 12 degrees."
	icon_state = "owE_helm"
	unique_death = 'sound/voice/elite_death.ogg'
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED
		)

/obj/item/clothing/suit/armor/vest/old/security/owE
	name = "overwatch elite armored vest"
	desc = "White and nice."
	icon_state = "owE"

/obj/item/clothing/under/ca_uniform
	name = "city administrator uniform"
	desc = "Brown and snazzy, looks like the Combine issue the same thing for all administrators..."
	icon_state = "rdalt"
	worn_state = "cauniform"

/obj/item/clothing/under/fo_uniform
	name = "factory overseer's uniform"
	desc = "The same as the uniform of the worker, but it has a red armband. Don't go mimicking historical figures now."
	icon_state = "detective2"
	worn_state = "founiform"

/obj/item/clothing/under/fw_uniform
	name = "factory worker's uniform"
	desc = "Not stained with oil or blood... yet."
	icon_state = "work"
	worn_state = "founiform"
