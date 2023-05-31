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
   db $0B : db $D5   ; 
   db $0A : db $D4   ; 
   db $0A : db $D3   ; 
   db $0B : db $D2   ; 
   db $0A : db $D1   ; 
   db $0A : db $D0   ; 
   db $0A : db $CF   ; 
   db $0A : db $CE   ; 
   db $0B : db $CD   ; 
   db $0A : db $CC   ; 
   db $0A : db $CB   ; 
   db $0A : db $CA   ; 
   db $0A : db $C9   ; 
   db $0B : db $C8   ; 
   db $0B : db $C7   ; 
   db $0A : db $C6   ; 
   db $0A : db $C5   ; 
   db $0A : db $C4   ; 
   db $0B : db $C3   ; 
   db $0A : db $C2   ; 
   db $0A : db $C1   ; 
   db $08 : db $C0   ; 
   db $00            ; 
