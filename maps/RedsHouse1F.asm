	object_const_def ; object_event constants
	const REDSHOUSE1F_REDS_MOM

RedsHouse1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene

	db 0 ; callbacks

.DummyScene:
	end

RedsMom:
	faceplayer
	opentext
	checkevent EVENT_MEET_STUMP
	iftrue .MetAlready
	writetext RedsMomText1
	waitbutton
	closetext
	;setevent EVENT_MET_REDS_MOM
	end
.MetAlready:
	writetext RedsMomText2
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MomKeepAtItText
	waitbutton
	closetext
	end

RedsHouse1FTV:
	jumptext RedsHouse1FTVText

RedsHouse1FBookshelf:
	jumpstd picturebookshelf

RedsMomText1:
	text "Hi honey!"
	para "I know it's been"
	line "hard since we"
	para "moved to Japan but"
	line "I'm sure you'll"
	cont "get used to it." 
	para "By the way that"
	line "odd professor"
	para "wanted to see you."
	line "What was his name"
	para "again? Stump?"
	line "Strange most don't"
	para "like him here"
	line "despite being a"
	para "Pokemon professor."
	done

RedsMomText2:
	text "Hi honey how are"
	line "you doing?"
	para "You should rest a"
	line "bit!"
	done

MomKeepAtItText:
	text "There you go!"
	line "You look better" 
	para "than ever!" 
	line "Remember not to"
	para "push yourself too"
	line "hard now go and"
	para "get em!"
	done

RedsHouse1FTVText:
	text "What's on T.V?"
	para "A man from the CIA"
	line "is interrogating"
	para "a man with a mask"
	line "on a plane"
	para "Why does he wear"
	line "the mask?"
	done

RedsHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  6,  7, SHIZUOKA, 1
	warp_event  7,  7, SHIZUOKA, 1
	warp_event 11,  1, REDS_HOUSE_2F, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event  4,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  5,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  7,  1, BGEVENT_READ, RedsHouse1FTV

	db 1 ; object events
	object_event  9,  4, SPRITE_YOUR_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
