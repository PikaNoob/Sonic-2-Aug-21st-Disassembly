;===============================================================================
; Objeto 0xA7 - Inimigo Grabber (aranha) na Chemical Plant
; ->>>
;===============================================================================
; Offset_0x02A2D4:
                moveq   #$00, D0
                move.b  Obj_Routine(A0), D0                              ; $0024
                move.w  Offset_0x02A2E2(PC, D0), D1
                jmp     Offset_0x02A2E2(PC, D1)
;-------------------------------------------------------------------------------
Offset_0x02A2E2:
                dc.w    Offset_0x02A2E6-Offset_0x02A2E2
                dc.w    Offset_0x02A2EA-Offset_0x02A2E2       
;-------------------------------------------------------------------------------
Offset_0x02A2E6:
                bra     Object_Settings                        ; Offset_0x027EA4
;-------------------------------------------------------------------------------
Offset_0x02A2EA:
                bra     Jmp_26_To_MarkObjGone                  ; Offset_0x02A7A0         
;===============================================================================
; Objeto 0xA7 - Inimigo Grabber (aranha) na Chemical Plant
; <<<-
;===============================================================================