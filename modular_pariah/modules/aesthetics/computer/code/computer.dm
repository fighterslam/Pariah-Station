
/obj/machinery/computer
	var/clicksound = "keyboard"
	var/clickvol = 40
	var/next_clicksound

/obj/machinery/computer/interact(mob/user, special_state)
	. = ..()
	if(clicksound && world.time > next_clicksound && isliving(user))
		next_clicksound = world.time + 5
		playsound(src, get_sfx_pariah(clicksound), clickvol)

/obj/machinery/computer/ui_interact(mob/user, datum/tgui/ui)
	if(clicksound && world.time > next_clicksound && isliving(user))
		next_clicksound = world.time + 5
		playsound(src, get_sfx_pariah(clicksound), clickvol)
	. = ..()

