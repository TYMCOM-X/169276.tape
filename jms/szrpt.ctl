:LOGFILE SZRPT.LOG
;Update the access date for these files for next system startup
COPY (SYS)HOME.SYS+(SYS)SAT.SYS,SYS.TMP
SYS G
ASSIGN DSK TTY	;Put listing in DSK:SZRPT.LST
R SZRPT
Y
NUMACCOUNT
3
DEASSIGN	;Listing back to TTY
R SZRPT
6
SIZE
;SZRPT.LST=GAN:3, SZRPT.LOG=ALL
DIRECT SZRPT.*

    