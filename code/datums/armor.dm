#define ARMORID "armor-[red]-[white]-[black]-[pale]-[melee]-[bullet]-[laser]-[energy]-[bomb]-[bio]-[rad]-[fire]-[acid]-[magic]-[wound]-[blunt]-[pierce]-[slash]"

/proc/getArmor(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0, magic = 0, wound = 0, red = 0, white = 0, black = 0, pale = 0)
	. = locate(ARMORID)
	if (!.)
		. = new /datum/armor(melee, bullet, laser, energy, bomb, bio, rad, fire, acid, magic, wound, red, white, black, pale)

/datum/armor
	datum_flags = DF_USE_TAG
	var/red
	var/white
	var/black
	var/pale
	var/melee
	var/bullet
	var/laser
	var/energy
	var/bomb
	var/bio
	var/rad
	var/fire
	var/acid
	var/magic
	var/wound
	//New ones to slowly diversify the melee damage
	var/blunt
	var/pierce
	var/slash

/datum/armor/New(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0, magic = 0, wound = 0, red = 0, white = 0, black = 0, pale = 0, blunt = 0, pierce = 0, slash = 0)
	src.red = red
	src.white = white
	src.black = black
	src.pale = pale
	src.melee = melee
	src.bullet = bullet
	src.laser = laser
	src.energy = energy
	src.bomb = bomb
	src.bio = bio
	src.rad = rad
	src.fire = fire
	src.acid = acid
	src.magic = magic
	src.wound = wound
	src.blunt = blunt
	src.pierce = pierce
	src.slash = slash
	tag = ARMORID

/datum/armor/proc/modifyRating(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0, magic = 0, wound = 0, red = 0, white = 0, black = 0, pale = 0, blunt = 0, pierce = 0, slash = 0)
	return getArmor(src.melee+melee, src.bullet+bullet, src.laser+laser, src.energy+energy, src.bomb+bomb, src.bio+bio, src.rad+rad, src.fire+fire, src.acid+acid, src.magic+magic, src.wound+wound, src.red+red, src.white+white, src.black+black, src.pale+pale, src.blunt+blunt, src.pierce+pierce, src.slash+slash)

/datum/armor/proc/modifyAllRatings(modifier = 0)
	return getArmor(melee+modifier, bullet+modifier, laser+modifier, energy+modifier, bomb+modifier, bio+modifier, rad+modifier, fire+modifier, acid+modifier, magic+modifier, wound+modifier, red+modifier, white+modifier, black+modifier, pale+modifier, blunt+modifier, pierce+modifier, slash+modifier)

/datum/armor/proc/setRating(melee, bullet, laser, energy, bomb, bio, rad, fire, acid, magic, wound, red, white, black, pale, blunt, pierce, slash)
	return getArmor((isnull(red) ? src.red : red),\
					(isnull(white) ? src.white : white),\
					(isnull(black) ? src.black : black),\
					(isnull(pale) ? src.pale : pale),\
					(isnull(melee) ? src.melee : melee),\
					(isnull(bullet) ? src.bullet : bullet),\
					(isnull(laser) ? src.laser : laser),\
					(isnull(energy) ? src.energy : energy),\
					(isnull(bomb) ? src.bomb : bomb),\
					(isnull(bio) ? src.bio : bio),\
					(isnull(rad) ? src.rad : rad),\
					(isnull(fire) ? src.fire : fire),\
					(isnull(acid) ? src.acid : acid),\
					(isnull(magic) ? src.magic : magic),\
					(isnull(wound) ? src.wound : wound)),\
					(isnull(blunt) ? src.blunt : blunt)),\
					(isnull(pierce) ? src.pierce : pierce)),\
					(isnull(slash) ? src.slash : slash))

/datum/armor/proc/getRating(rating)
	return vars[rating]

/datum/armor/proc/getList()
	return list(MELEE = melee, BULLET = bullet, LASER = laser, ENERGY = energy, BOMB = bomb, BIO = bio, RAD = rad, FIRE = fire, ACID = acid, MAGIC = magic, WOUND = wound, RED_DAMAGE = red, WHITE_DAMAGE = white, BLACK_DAMAGE = black, PALE_DAMAGE = pale, BLUNT_DAMAGE = blunt, PIERCE_DAMAGE = pierce, SLASH_DAMAGE = slash)

/datum/armor/proc/attachArmor(datum/armor/AA)
	return getArmor(melee+AA.melee, bullet+AA.bullet, laser+AA.laser, energy+AA.energy, bomb+AA.bomb, bio+AA.bio, rad+AA.rad, fire+AA.fire, acid+AA.acid, magic+AA.magic, wound+AA.wound, red+AA.red, white+AA.white, black+AA.black, pale+AA.pale, blunt+AA.blunt, pierce+AA.pierce, slash+AA.slash)

/datum/armor/proc/detachArmor(datum/armor/AA)
	return getArmor(melee-AA.melee, bullet-AA.bullet, laser-AA.laser, energy-AA.energy, bomb-AA.bomb, bio-AA.bio, rad-AA.rad, fire-AA.fire, acid-AA.acid, magic-AA.magic, wound-AA.wound, red-AA.red, white-AA.white, black-AA.black, pale-AA.pale, blunt-AA.blunt, pierce-AA.pierce, slash-AA.slash)

/datum/armor/vv_edit_var(var_name, var_value)
	if (var_name == NAMEOF(src, tag))
		return FALSE
	. = ..()
	tag = ARMORID // update tag in case armor values were edited

#undef ARMORID
