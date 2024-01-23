

/obj/item/bodypart/head/robot/workshop
	name = "prosthetic head"

/obj/item/bodypart/head/robot/workshop/drop_limb(special)
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, -10)
	..()

/obj/item/bodypart/head/robot/workshop/attach_limb(mob/living/carbon/C, special)
	. = ..()
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, 10)



/obj/item/bodypart/chest/robot/workshop
	name = "prosthetic chest"


/obj/item/bodypart/chest/robot/workshop/drop_limb(special)
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, -10)
	..()

/obj/item/bodypart/chest/robot/workshop/attach_limb(mob/living/carbon/C, special)
	. = ..()
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, 10)




/obj/item/bodypart/l_arm/robot/workshop
	name = "prosthetic left arm"

/obj/item/bodypart/l_arm/robot/workshop/drop_limb(special)
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, -10)
	..()

/obj/item/bodypart/l_arm/robot/workshop/attach_limb(mob/living/carbon/C, special)
	. = ..()
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, 10)




/obj/item/bodypart/r_arm/robot/workshop
	name = "prosthetic right arm"


/obj/item/bodypart/r_arm/robot/workshop/drop_limb(special)
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, -10)
	..()

/obj/item/bodypart/r_arm/robot/workshop/attach_limb(mob/living/carbon/C, special)
	. = ..()
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, 10)




/obj/item/bodypart/l_leg/robot/workshop
	name = "prosthetic left leg"


/obj/item/bodypart/l_leg/robot/workshop/drop_limb(special)
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, -10)
	..()

/obj/item/bodypart/l_leg/robot/workshop/attach_limb(mob/living/carbon/C, special)
	. = ..()
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, 10)





/obj/item/bodypart/r_leg/robot/workshop
	name = "prosthetic right leg"

/obj/item/bodypart/r_leg/robot/workshop/drop_limb(special)
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, -10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, -10)
	..()

/obj/item/bodypart/r_leg/robot/workshop/attach_limb(mob/living/carbon/C, special)
	. = ..()
	if(!ishuman(owner))
		return
	var/mob/living/carbon/human/H = owner
	H.adjust_attribute_buff(FORTITUDE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(PRUDENCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(TEMPERANCE_ATTRIBUTE, 10)
	H.adjust_attribute_buff(JUSTICE_ATTRIBUTE, 10)


