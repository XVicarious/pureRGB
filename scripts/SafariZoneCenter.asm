SafariZoneCenter_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SafariZoneCenterTrainerHeaders
	ld de, SafariZoneCenter_ScriptPointers
	ld a, [wSafariZoneCenterCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSafariZoneCenterCurScript], a
	ret

SafariZoneCenter_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw RangerPostBattleCenter

SafariZoneCenter_TextPointers:
	dw SafariZoneCenterRangerText0
	dw SafariZoneCenterTrainerText0
	dw SafariZoneCenterTrainerText1
	dw SafariZoneCenterTrainerText2
	dw SafariZoneCenterTrainerText3
	dw PickUpItemText
	dw SafariZoneCenterText2
	dw SafariZoneCenterText3

RangerPostBattleCenter:
	SetEvent EVENT_BEAT_SAFARI_ZONE_CENTER_RANGER_0
	jpfar RangerPostBattle

SafariZoneCenterText2:
	text_far _SafariZoneCenterText2
	text_end

SafariZoneCenterText3:
	text_far _SafariZoneCenterText3
	text_end

SafariZoneCenterTrainerHeaders:
	def_trainers
SafariZoneCenterRangerHeader:
	trainer EVENT_BEAT_SAFARI_ZONE_CENTER_RANGER_0, 0, SafariZoneCenterRangerBattleText0, SafariZoneCenterRangerEndBattleText0, SafariZoneCenterRangerAfterBattleText0
SafariZoneCenterTrainerHeader0:
	trainer EVENT_BEAT_SAFARI_ZONE_CENTER_TRAINER_0, 3, SafariZoneCenterTrainerBattleText0, SafariZoneCenterTrainerEndBattleText0, SafariZoneCenterTrainerAfterBattleText0
SafariZoneCenterTrainerHeader1:
	trainer EVENT_BEAT_SAFARI_ZONE_CENTER_TRAINER_1, 0, SafariZoneCenterTrainerBattleText1, SafariZoneCenterTrainerEndBattleText1, SafariZoneCenterTrainerAfterBattleText1
SafariZoneCenterTrainerHeader2:
	trainer EVENT_BEAT_SAFARI_ZONE_CENTER_TRAINER_2, 3, SafariZoneCenterTrainerBattleText2, SafariZoneCenterTrainerEndBattleText2, SafariZoneCenterTrainerAfterBattleText2
SafariZoneCenterTrainerHeader3:
	trainer EVENT_BEAT_SAFARI_ZONE_CENTER_TRAINER_3, 3, SafariZoneCenterTrainerBattleText3, SafariZoneCenterTrainerEndBattleText3, SafariZoneCenterTrainerAfterBattleText3
	db -1 ; end

SafariZoneCenterRangerText0:
	text_asm
	ld hl, SafariZoneCenterRangerHeader
	call TalkToTrainer
	ld a, 3
	ld [wCurMapScript], a 
	jp TextScriptEnd

SafariZoneCenterRangerBattleText0:
	text_far _SafariZoneCenterRangerText
	text_end

SafariZoneCenterRangerEndBattleText0:
	text_far _SafariZoneCenterRangerEndBattleText
	text_end

SafariZoneCenterRangerAfterBattleText0:
	text_far _SafariZoneCenterRangerAfterBattleText
	text_end

SafariZoneCenterTrainerText0:
	text_asm
	ld hl, SafariZoneCenterTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SafariZoneCenterTrainerBattleText0:
	text_far _SafariZoneCenterRockerText
	text_end

SafariZoneCenterTrainerEndBattleText0:
	text_far _SafariZoneCenterRockerEndBattleText
	text_end

SafariZoneCenterTrainerAfterBattleText0:
	text_far _SafariZoneCenterRockerAfterBattleText
	text_end

SafariZoneCenterTrainerText1:
	text_asm
	ld hl, SafariZoneCenterTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SafariZoneCenterTrainerBattleText1:
	text_far _SafariZoneCenterEngineerText
	text_end

SafariZoneCenterTrainerEndBattleText1:
	text_far _SafariZoneCenterEngineerEndBattleText
	text_end

SafariZoneCenterTrainerAfterBattleText1:
	text_far _SafariZoneCenterEngineerAfterBattleText
	text_end

SafariZoneCenterTrainerText2:
	text_asm
	ld hl, SafariZoneCenterTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SafariZoneCenterTrainerBattleText2:
	text_far _SafariZoneCenterJugglerText
	text_end

SafariZoneCenterTrainerEndBattleText2:
	text_far _SafariZoneCenterJugglerEndBattleText
	text_end

SafariZoneCenterTrainerAfterBattleText2:
	text_far _SafariZoneCenterJugglerAfterBattleText
	text_end

SafariZoneCenterTrainerText3:
	text_asm
	ld hl, SafariZoneCenterTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SafariZoneCenterTrainerBattleText3:
	text_far _SafariZoneCenterManiacText
	text_end

SafariZoneCenterTrainerEndBattleText3:
	text_far _SafariZoneCenterManiacEndBattleText
	text_end

SafariZoneCenterTrainerAfterBattleText3:
	text_far _SafariZoneCenterManiacAfterBattleText
	text_end