_TM39PreReceiveText::
	text "My #MON's"
	line "ashes are stored"
	cont "in #MON TOWER."

	para "You can have this"
	line "TM. I don't need"
	cont "it any more..."
	prompt

_ReceivedTM39Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_TM39ExplanationText::
	text "TM39 is a move"
	line "called"
	cont "FILTHY SLAM."

	para "It's a strong"
	line "POISON type move."
	para "Use it in battles"
	line "you can't afford"
	cont "to lose."
	done

_TM39NoRoomText::
	text "You don't have"
	line "room for this."
	done

_Route12GateUpstairsText_495b8::
	text "Looked into the"
	line "binoculars."

	para "A man fishing!"
	done

_Route12GateUpstairsText_495c4::
	text "Looked into the"
	line "binoculars."

	para "It's #MON TOWER!"
	done
