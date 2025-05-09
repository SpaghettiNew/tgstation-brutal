/datum/quirk/genomodded_feature
	name = "Genomodded feature"
	desc = "Добавляет персонажу черты ебаного фурфага"
	icon = FA_ICON_LUNGS
	value = -100
	medical_record_text = "Пациент - фурри. \
		<b>ебаный.</b>"
	hardcore_value = 3
	quirk_flags = QUIRK_CHANGES_APPEARANCE
	mail_goodies = list(/obj/item/storage/organbox)
	/// The slot to replace, in string form
	/// The original organ from before the prosthetic was applied
	var/obj/item/organ/mutation

/datum/quirk/genomodded_feature/add_unique(client/client_source)
	var/mob/living/carbon/human_holder = quirk_holder

	mutation = new /obj/item/organ/tail/fish
	mutation.Insert(human_holder, special = TRUE)

/datum/quirk/genomodded_feature/post_add()
	to_chat(quirk_holder, span_bolddanger("Бля, \
	\
	Как же хочется худенькую, бледную, не очень высокую, девственную, нецелованную, с тонкими руками, небольшими ступнями, синяками под глазами, растрёпанными или неуложенными волосами, ненакрашенную, забитую хикку, лохушку без друзей и подруг, закрытую социофобку, одновременно мечтающую о ком-то близком, чтобы зашёл к ней в мирок, но ничего не ломал по возможности, дабы вместе с ней изолироваться от неприятного социума."))

/datum/quirk/genomodded_feature/remove()
	qdel(mutation)


