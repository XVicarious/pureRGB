FuchsiaCity_Script:
	call FuchsiaReplaceCutTiles
	jp EnableAutoTextBoxDrawing

; PureRGBnote: ADDED: function that will remove all cut trees in fuchsia if we deleted them with the tree deleter
FuchsiaReplaceCutTiles:
	ld hl, wCurrentMapScriptFlags
	bit 5, [hl] ; did we load the map from a save/warp/door/battle, etc?
	res 5, [hl]
	jr nz, .removeAddCutTiles
	bit 4, [hl] ; did we enter the map by traversal from another route
	res 4, [hl]
	jr nz, .removeAddCutTilesNoRedraw
	ret
.removeAddCutTiles
	CheckEvent EVENT_DELETED_FUCHSIA_TREES
	jr nz, .remove
.add
	ld a, $60
	ld [wNewTileBlockID], a
	lb bc, 6, 13
	predef ReplaceTileBlock
	lb bc, 3, 11
	predef ReplaceTileBlock
	ret
.remove
	ld a, $6E
	ld [wNewTileBlockID], a
	lb bc, 9, 9
	predef ReplaceTileBlock
	lb bc, 5, 8
	predef ReplaceTileBlock
	ret
.removeAddCutTilesNoRedraw
	; this avoids redrawing the map because when going between areas these tiles are offscreen.
	CheckEvent EVENT_DELETED_FUCHSIA_TREES
	jr nz, .removeNoRedraw
.addNoRedraw
	ld a, $60
	ld [wNewTileBlockID], a
	lb bc, 6, 13
	predef ReplaceTileBlockNoRedraw
	lb bc, 3, 11
	predef ReplaceTileBlockNoRedraw
	ret
.removeNoRedraw
	ld a, $6E
	ld [wNewTileBlockID], a
	lb bc, 9, 9
	predef ReplaceTileBlockNoRedraw
	lb bc, 5, 8
	predef ReplaceTileBlockNoRedraw
	ret


FuchsiaCity_TextPointers:
	dw FuchsiaCityText1
	dw FuchsiaCityText2
	dw FuchsiaCityText3
	dw FuchsiaCityText4
	dw FuchsiaCityText5
	dw FuchsiaCityText6
	dw FuchsiaCityText7
	dw FuchsiaCityText8
	dw FuchsiaCityText9
	dw FuchsiaCityText10
	dw FuchsiaCityText11
	dw FuchsiaCityText12
	dw FuchsiaCityText13
	dw MartSignText
	dw PokeCenterSignText
	dw FuchsiaCityText16
	dw FuchsiaCityText17
	dw FuchsiaCityText18
	dw FuchsiaCityText19
	dw FuchsiaCityText20
	dw FuchsiaCityText21
	dw FuchsiaCityText22
	dw FuchsiaCityText23
	dw FuchsiaCityText24

; PureRGBnote: CHANGED: this NPC will point out how alt palette pokemon appear in the safari zone
; but only if we have alt palette pokemon enabled in the game options.
FuchsiaCityText1: 
	text_asm
	ld a, [wOptions2]
	bit BIT_ALT_PKMN_PALETTES, a ; do we have alt palettes enabled
	jr nz, .altPalettes
	ld hl, FuchsiaCityText1Start
	jr .done
.altPalettes
	ld hl, FuchsiaCityText1StartPrompt
	call PrintText
	ld hl, FuchsiaCityText1Color
.done
	call PrintText
	jp TextScriptEnd


FuchsiaCityText1Start:
	text_far _FuchsiaCityText1
	text_end

FuchsiaCityText1StartPrompt:
	text_far _FuchsiaCityText1
	text_promptbutton
	text_end

FuchsiaCityText1Color:
	text_far _FuchsiaCityText1Color
	text_end


FuchsiaCityText2:
	text_far _FuchsiaCityText2
	text_end

FuchsiaCityText3:
	text_far _FuchsiaCityText3
	text_end

FuchsiaCityText4:
	text_far _FuchsiaCityText4
	text_end

FuchsiaCityText5:
FuchsiaCityText6:
FuchsiaCityText7:
FuchsiaCityText8:
FuchsiaCityText9:
FuchsiaCityText10:
	text_far _FuchsiaCityText5
	text_end

FuchsiaCityText12:
FuchsiaCityText11:
	text_far _FuchsiaCityText11
	text_end

FuchsiaCityText13:
	text_far _FuchsiaCityText13
	text_end

FuchsiaCityText16:
	text_far _FuchsiaCityText16
	text_end

FuchsiaCityText17:
	text_far _FuchsiaCityText17
	text_end

FuchsiaCityText18:
	text_far _FuchsiaCityText18
	text_end

FuchsiaCityText19:
	text_asm
	ld hl, FuchsiaCityChanseyText
	call PrintText
	ld a, CHANSEY
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityChanseyText:
	text_far _FuchsiaCityChanseyText
	text_end

FuchsiaCityText20:
	text_asm
	ld hl, FuchsiaCityVoltorbText
	call PrintText
	ld a, VOLTORB
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityVoltorbText:
	text_far _FuchsiaCityVoltorbText
	text_end

FuchsiaCityText21:
	text_asm
	ld hl, FuchsiaCityKangaskhanText
	call PrintText
	ld a, KANGASKHAN
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityKangaskhanText:
	text_far _FuchsiaCityKangaskhanText
	text_end

FuchsiaCityText22:
	text_asm
	ld hl, FuchsiaCitySlowpokeText
	call PrintText
	ld a, SLOWPOKE
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCitySlowpokeText:
	text_far _FuchsiaCitySlowpokeText
	text_end

FuchsiaCityText23:
	text_asm
	ld hl, FuchsiaCityLaprasText
	call PrintText
	ld a, LAPRAS
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityLaprasText:
	text_far _FuchsiaCityLaprasText
	text_end

FuchsiaCityText24:
	text_asm
	CheckEvent EVENT_GOT_DOME_FOSSIL
	jr nz, .asm_3b4e8
	CheckEventReuseA EVENT_GOT_HELIX_FOSSIL
	jr nz, .asm_667d5
	ld hl, FuchsiaCityText_19b2a
	call PrintText
	jr .asm_4343f
.asm_3b4e8
	ld hl, FuchsiaCityOmanyteText
	call PrintText
	ld a, OMANYTE
	jr .asm_81556
.asm_667d5
	ld hl, FuchsiaCityKabutoText
	call PrintText
	ld a, KABUTO
.asm_81556
	call DisplayPokedex
.asm_4343f
	jp TextScriptEnd

FuchsiaCityOmanyteText:
	text_far _FuchsiaCityOmanyteText
	text_end

FuchsiaCityKabutoText:
	text_far _FuchsiaCityKabutoText
	text_end

FuchsiaCityText_19b2a:
	text_far _FuchsiaCityText_19b2a
	text_end
