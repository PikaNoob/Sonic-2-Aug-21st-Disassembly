SoundB3_FireBurn_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundAE_B3_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM5, SoundB3_FireBurn_FM5,	$00, $00
	smpsHeaderSFXChannel cPSG3, SoundB3_FireBurn_PSG3,	$00, $00

; FM5 Data
SoundB3_FireBurn_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $01, $01, $40, $48
	dc.b	nD0, $06, nE0, $02
	smpsStop

; PSG3 Data
SoundB3_FireBurn_PSG3:
	smpsPSGvoice        $00
	dc.b	nRst, $0B
	smpsPSGform         $E7
	dc.b	nD3, $25, smpsNoAttack

SoundB3_FireBurn_Loop00:
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack
	smpsLoop            $00, $10, SoundB3_FireBurn_Loop00
	smpsStop
