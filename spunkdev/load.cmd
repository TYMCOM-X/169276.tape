; Basic structure of files to be fed to a non-preloaded loader to
; produce a preloaded loader "TBALDR"
 ;** Debug mode
TBALDR/-4Y, /-5Y, /T, /1B, SYS:JOBDAT, SYMLOD, RUNDAT, DATAR, TBARUN, /G
 ;** Production mode
TBALDR/-4Y, /-5Y, SYS:JOBDAT, SYMLOD, /W, RUNDAT, DATAR, TBARUN, /G

; Basic structure of files to be fed to a pre-loaded loader to 
; produce a run-version of a TBA program.  Change J!K00##.TMP to the
; user module(s) file name(s)
 ;** Debug mode:
TBAREK/-3Y, /1B, J!K00##.TMP, /L, TBALBG, TBALIB, TBALEN, /N, TBAEND, /G
 ;** Production mode:
TBAREK/-3Y, /-5Y, /E, /W, J!K00##.TMP, /L, TBALBG, TBALIB, TBALEN, /N, TBAEND, /G

; Basic structure of files to be fed to a non-preloaded loader to
; produce a run-version of a TBA program. J!K00##.TMP still apply
 ;** Debug mode:
TBAREK/-3Y, /T, SYMLOD, /1B, RUNDAT, DATAR, TBARUN, J!K00##.TMP, /L, TBALBG, TBALIB, TBALEN, /N, TBAEND, /G
 ;** Production mode:
TBAREK/-3Y, /E, SYMLOD, /W, RUNDAT, DATAR, TBARUN, J!K00##.TMP, /L, TBALBG, TBALIB, TBALEN, /N, TBAEND, /G


; Switch descriptions :
; file/-3Y      File to run if loading errors
; file/-4Y      File to be saved as a pre-loaded loader
; /1B           Load symbols in hi-seg (debug mode only)
; /L            Load in library search mode 
; /N            Load in normal search mode (default)
; /G            Finish loading and execute
; /-5Y          Supress "EXECUTION" message
; /E            On /G go to starting address of program
;                (default is to finish load and return to XEXEC)
; /T            Load with DDT and local symbols
; /W            Do not load with local symbols
  