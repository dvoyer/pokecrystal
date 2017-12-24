const_value set 2
	const BLACKTHORNDRAGONSPEECHHOUSE_GRANNY
	const BLACKTHORNDRAGONSPEECHHOUSE_EKANS

BlackthornDragonSpeechHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

BlackthornDragonSpeechHouseGrannyScript:
	jumptextfaceplayer BlackthornDragonSpeechHouseGrannyText

BlackthornDragonSpeechHouseDratiniScript:
	opentext
	writetext BlackthornDragonSpeechHouseDratiniText
	cry DRATINI
	waitbutton
	closetext
	end

; unused
BlackthornDragonSpeechHousePictureBookshelf:
	jumpstd picturebookshelf

; unused
BlackthornDragonSpeechHouseMagazineBookshelf:
	jumpstd magazinebookshelf

BlackthornDragonSpeechHouseGrannyText:
	text "A clan of trainers"
	line "who can freely"

	para "command dragons"
	line "live right here in"
	cont "BLACKTHORN."

	para "As a result, there"
	line "are many legends"

	para "about dragons in"
	line "this town."
	done

BlackthornDragonSpeechHouseDratiniText:
	text "DRATINI: Draa!"
	done

BlackthornDragonSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 2, BLACKTHORN_CITY
	warp_def $7, $3, 2, BLACKTHORN_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 2
	object_event SPRITE_GRANNY, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseGrannyScript, -1
	object_event SPRITE_EKANS, 5, 5, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseDratiniScript, -1
