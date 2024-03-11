/mob/living
    var/datum/language/default_language

/mob/living/verb/set_default_language(datum/language/language as null|anything in languages)
    set name = "Set Default Language"
    set category = "IC"

    // Check if the mob can only speak one language
    if (only_species_language)
        if (language != all_languages[src.species_language])
            to_chat(src, SPAN_NOTICE("You can only speak [lowertext(src.species_language)]."))
            return 0

    // Check if the selected language is the species default language
    if (language == all_languages[src.species_language])
        to_chat(src, SPAN_NOTICE("You can only speak your default language, [lowertext(language.name)]."))
    else if (language)
        // Check if the mob can speak the selected language
        if (!can_speak(language))
            to_chat(src, SPAN_NOTICE("You are unable to speak [lowertext(language.name)]."))
            return

        // Count the number of languages the mob knows
        var/datum/language/lang
        var/num_languages = 0 // We set this to -1 to account for the 'other' languages that does not include the first.

        for (lang in src.languages)
            num_languages += 1

        // Display messages based on the selected language
        if (num_languages > 0)
            to_chat(src, SPAN_NOTICE("You will now defaultly speak [lowertext(language.name)] and know [num_languages-1] other language(s)."))
        else
            to_chat(src, SPAN_NOTICE("You do not know a language."))

    // Set the default language outside the if-else block
    default_language = language

// Silicons can't neccessarily speak everything in their languages list
/mob/living/silicon/set_default_language(language as null|anything in speech_synthesizer_langs)
	..()

/mob/living/verb/check_default_language()
	set name = "Check Default Language"
	set category = "IC"

	if (default_language)
		to_chat(src, SPAN_NOTICE("You are currently speaking [lowertext(default_language.name)]."))
	else
		to_chat(src, SPAN_NOTICE("Your current default language is your species or mob type default."))
