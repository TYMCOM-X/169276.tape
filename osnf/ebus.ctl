:PARAMETERS NODE=2333
; This CTL file rebuilds the BND file for an EBUS base from scratch.
; Using ":PARAMETERS NODE=\NODE\"
; NDxxxx.CMD+NDxxxx.TYM builds the ISIS kernel
; NDxxxx.C00+NDxxxx.TYM builds the node code (slot 0)
; NDxxxx.C01+NDxxxx.T01 builds the Engine half of EBUS code (slot 1)
; (SOURCE)EBUS02.O00 has the 68000 half of EBUS code (slot 2)

DIRECT ND\NODE\.TYM,ND\NODE\.T01,ND\NODE\.CMD,ND\NODE\.C00,ND\NODE\.C01

; The following files in SOURCE are EBUS specific:
;EBUS02.T00 = example of what is needed in NDxxxx.T01
;EBUS02.C00 = example of what is needed in NDxxxx.C01
;EBUS02.I00 = Initialization file
;EBUS02.R00 = Release code (?STAT=EBUSOM, front-panel display code)
;EBUS02.O00 = Object code for 68K, MERLIN puts this in slot 2
;EBUS02.J00 = Source code for EBUS02.O00, for reference only

; Create the ISIS Kernel from NDxxxx.TYM
R NAD
;XND\NODE\.CMD

; Create the node code for slot 0 from NDxxxx.TYM
R NAD
;XND\NODE\.C00

; Create the Engine code that runs in Slot 1 from NDxxxx.T01
R NAD
;XND\NODE\.C01

; This is how to create the 68000 code that runs in slot 2
;; RUN (MPL)ASM68K
;; EBUS02.LIS/X=(SOURCE)EBUS02.J00
;; DIFFER EBUS02.SRE,(SOURCE)EBUS02.O00

; Build BND file.  Note that the 68K code is the same in all bases.
R MERLIN
ND\NODE\.BND=ND\NODE\.NIB,ND\NODE\.N00,ND\NODE\.N01,(SOURCE)EBUS02.O00/S

DIRECT ND\NODE\.BND
      