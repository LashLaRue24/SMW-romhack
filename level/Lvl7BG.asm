; To be upplied to a level using UberASMTool.

init: 
	REP #$20
	LDA #$3200
	STA $4330
	LDA #.GreenBlueTable
	STA $4332
	LDY.b #.GreenBlueTable>>16
	STY $4334
	SEP #$20
	LDA #$08
	TSB $0D9F|!addr
	RTL

.GreenBlueTable:     ; 
   db $08 : db $C0   ; 
   db $07 : db $C1   ; 
   db $08 : db $C2   ; 
   db $07 : db $C3   ; 
   db $07 : db $C4   ; 
   db $07 : db $C5   ; 
   db $07 : db $C6   ; 
   db $08 : db $C7   ; 
   db $07 : db $C8   ; 
   db $07 : db $C9   ; 
   db $07 : db $CA   ; 
   db $08 : db $CB   ; 
   db $07 : db $CC   ; 
   db $07 : db $CD   ; 
   db $07 : db $CE   ; 
   db $08 : db $CF   ; 
   db $07 : db $D0   ; 
   db $07 : db $D1   ; 
   db $07 : db $D2   ; 
   db $07 : db $D3   ; 
   db $07 : db $D4   ; 
   db $08 : db $D5   ; 
   db $07 : db $D6   ; 
   db $07 : db $D7   ; 
   db $07 : db $D8   ; 
   db $08 : db $D9   ; 
   db $07 : db $DA   ; 
   db $07 : db $DB   ; 
   db $07 : db $DC   ; 
   db $08 : db $DD   ; 
   db $06 : db $DE   ; 
   db $00            ; 
