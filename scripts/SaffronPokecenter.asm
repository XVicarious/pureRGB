SaffronPokecenter_Script:
	call SetLastBlackoutMap
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

SaffronPokecenter_TextPointers:
	dw SaffronHealNurseText
	dw SaffronPokecenterText2
	dw SaffronPokecenterText3
	dw SaffronTradeNurseText

SaffronHealNurseText:
	script_pokecenter_nurse

SaffronPokecenterText2:
	text_far _SaffronPokecenterText2
	text_end

SaffronPokecenterText3:
	text_far _SaffronPokecenterText3
	text_end

SaffronTradeNurseText:
	script_cable_club_receptionist
