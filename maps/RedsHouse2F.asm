RedsHouse2F_MapScripts:
	db 0 ; scene scripts
	;scene_script  .PlayersHouseCheckGender ; SCENE_DEFAULT

	db 0 ; callbacks
	
;.SetGender:
	;prioritysjump .SettingGender
	;end
	
;.SettingGender:
	;opentext
	;writetext Text_Gender
	;waitbutton
	;yesorno
	;iffalse .Setfemale
	;closetext
	;setmapscene REDS_HOUSE_2F, SCENE_FINISHED
	;end
	
;.Setfemale:
	;setevent EVENT_FEMALE
	;opentext
	;writetext Text_Thanks
	;waitbutton
	;closetext
	;setmapscene REDS_HOUSE_2F, SCENE_FINISHED
	;end

;Text_Gender:
	;text "For some reason"
   ; line "the gender flag"
	;para "does not set when"	
	;line "you click it so I"
	;para "had to add this"
	;line "fix. Sorry about"
	;para "that. Simply hit"
	;line "yes for male or no"
	;para "for female. Only"
	;line "thing this does is"
	;para "change pronouns"
	;line "and also certain"
	;para "NPCs that react"
	;line "differently to"
	;para "males or females."
	;done
	
Text_Thanks:
	text "Thanks."
	done

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

;RedsHouse2FPCScript:
;	jumptext RedsHouse2FPCText
	
PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

;RedsHouse2FPCText:
;	text "It looks like it"
;	line "hasn't been used"
;	cont "in a long time…"
;	done

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  1, REDS_HOUSE_1F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  0,  1, BGEVENT_UP, PlayersHousePCScript
	;bg_event  0,  1, BGEVENT_READ, RedsHouse2FPCScript

	db 0 ; object events
