SoundB8_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoiceNull
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, SoundB8_PSG3,	$00, $00

; PSG3 Data
SoundB8_PSG3:
	smpsModSet          $01, $01, $F0, $08
	smpsPSGform         $E7
	dc.b	nEb4, $08

SoundB8_Loop00:
	dc.b	nB3, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, SoundB8_Loop00
	smpsStop
