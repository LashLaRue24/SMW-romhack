; UberASM Version
; From Ladida's cluster sprite package. Slightly modified.

!SpikeCount       = $09   ; Amount of sprites to fall down, -1. Values outside of 00-13 are not recommended.

!ClusterNum = $01	  ; Custom cluster sprite number from your list

;Don't edit these!
!ClusterOffset  = $09

!cluster_num = $1892|!addr
!cluster_y_low = $1E02|!addr
!cluster_x_low = $1E16|!addr

init:
LDA $71						;if castle entrance/no yoshi sign cutscene plays
CMP #$0A					;don't spawn clusters (if the sublevel you're using should have them, you'll have to use a sprite version)
BEQ .Re						;

PHB
PHK
PLB

	LDY #!SpikeCount
-
	LDA #!ClusterNum+!ClusterOffset
	STA !cluster_num,y     ; /

	LDA InitXY,y           ; \ Initial X and Y position of each sprite.
	PHA                    ; | Is relative to screen border.
	AND #$F0               ; |
	STA !cluster_x_low,y   ; |
	PLA                    ; |
	ASL #4                 ; |
	STA !cluster_y_low,y   ; /
	
	DEY                    ; \ Loop until all slots are done.
	BPL -                  ; /

	LDA #$01               ; \ Run cluster sprite routine.
	STA $18B8|!addr       ; /

	PLB                    ; restore bank

.Re
	RTL                    ; Return.


; Initial X and Y position table of sprites.
; Relative to screen border.
; Format: $xy
InitXY:
db $06,$45,$9E,$E2,$A7,$BC,$59,$40,$61,$F5,$D6,$24,$7B,$33,$C6,$0B,$00,$39,$70,$A1