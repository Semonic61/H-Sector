/obj/item/disk/nifsoft_uploader/dorms/nif_gfluid_disk
	name = "genital fluid"
	loaded_nifsoft = /datum/nifsoft/action_granter/free/nif_gfluid

// Currently doesn't work because fluids aren't implemented
/datum/nifsoft/action_granter/free/nif_gfluid
	name = "Genital Fluid Inducer"
	program_desc = "Allows the user to induce their genitals into producing a specific reagent. Will prevent harmful liquids from being accepted as a genital fluid replacement."
	buying_category = NIFSOFT_CATEGORY_FUN
	lewd_nifsoft = TRUE
	ui_icon = "eye"
	action_to_grant = /datum/action/genital_fluid_infuse

//Edit /datum/action/item_action/genital_fluid_infuse, this just uses the same variables.
/datum/action/genital_fluid_infuse
	name = "Infuse Genital Fluid"
	button_icon_state = "genital_fluid"
	button_icon = 'modular_zzplurt/icons/obj/implants.dmi'
	background_icon_state = "bg_tech"
	desc = "Allows the user to induce their genitals into producing a specific reagent. Will prevent harmful liquids from being accepted as a genital fluid replacement."

/datum/action/genital_fluid_infuse/Trigger(trigger_flags)
	. = ..()
	if(!.)
		return
	//Thanks byond for being such a quirky language
	call(/obj/item/implant/genital_fluid::update_genital_fluid())(owner, TRUE)
