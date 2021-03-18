; PARAMETER FILES

END1= mver + dcld + pagd + tabd + aryd + pma + opnd + end
END2 = tabd + segswp + initia + errnum + end
END3 = dcld + ocbmap + iosym + end
END4 = fname + heddef + END
END5 = pagd + tabd + pma + simint + cdgndf + rfdef + comdf + errnum +  END  
END6 = tbadcl + end

; TIE:

DOECHO = xlist + dcld + list + DOECHO
TERCMD = xlist + dcld + pagd + errnum + list + TERCMD(,P)  
TERINP = xlist + mver + dcld + pagd + errnum + list + TERINP(,P)
TEROUT = xlist + mver + dcld + pagd + tabd + errnum + type + list + TEROUT(,P)
TIE = TIE(P)  
TIEMAC = TIEMAC

; TRANSITIONS:

COMLOD = xlist + mver + dcld + pagd + errnum + list + COMLOD  
COMRUN = xlist + mver + dcld + pagd + list + COMRUN  
LODCOM = xlist + mver + dcld + pagd + segswp + initia + errnum + list + LODCOM(,P)  
LODSTR = xlist + mver + dcld + pagd + tabd + pma + segswp + list + LODSTR(,P)  
TBAEND = xlist + mver + dcld + pagd + errnum + fname + list + TBAEND(,P)  
TBARUN = xlist + mver + dcld + pagd + segswp + initia + errnum + heddef + list + TBARUN(,P)  
TBAUBG = TBAUBG  
TBAUND = TBAUND  
TRNSUT = xlist + mver + dcld + pagd + errnum + list + TRNSUT(,P)  

; PARSE-COMPILE UTILITIES, ETC. --

; DATA FOR THE LOWSEG:

DATAC = mver + initia + DATAC ,; ALMOST THE SAME AS DATAR
DATAR = mver + initia + DATAR  
PARDAT = xlist + mver + pagd + tabd + pma + list + PARDAT  
RUNDAT = xlist + mver + pagd + tabd + list + aryd + pma + errnum + RUNDAT  
TBLDAT = xlist + mver + list + TBLDAT  

; PARSE-COMPILE UTILITIES  Vol I of II  (A thru M)

ISCQ1 = ISCQ1  
LNDRY = xlist + dcld + pagd + list + errnum + opnd + LNDRY  
LOOKMD = xlist + dcld + pagd + list + fname + LOOKMD(,P)  
MAP = xlist + mver + dcld + pagd + errnum + list + MAP  
MODULE = xlist + mver + dcld + pagd + tabd + pma +;
         type + errnum + list + fname + heddef + MODULE(,P)  

; PARSE-COMPILE UTILITIES  Vol II of II  (N thru Z)

OPEN = xlist + mver + dcld + list + pagd + errnum + opnd + ocbmap + OPEN(,P)  
PAGER = xlist + mver + dcld + pagd + errnum + opnd + ocbmap + list + PAGER(,P) + TBAMSG
PCTRAP = xlist + mver + dcld + list + PCTRAP  
SIC = xlist + dcld + tabd + pma + list + SIC  
TABLES = mver + dcld + pagd + tabd + errnum + xlist + list + TABLES(,P)  

; PARSER --

; PARSE 1,2

PARSE1 = xlist + mver + dcld + pagd + tabd + list +;
        pma + segswp + initia + errnum + fname + heddef + PARSE1  
PARSE2 = xlist + dcld + pagd + tabd + pma + list + PARSE2  

; PARSE 3

PARSE3 = xlist + mver + dcld + pagd + tabd + list +;
        pma + errnum + fname + heddef + type + list + PARSE3(,P)

; PARSE 4

PARSE4 = xlist + dcld + tabd + pma + list + PARSE4  

; PARSE 5,6

PARSE5 = xlist + dcld + pagd + tabd + pma + fname + type + list + PARSE5(,p)
PARSE6 = xlist + mver + dcld + pagd + tabd + pma + errnum + heddef + type + list + PARSE6  

; PARSE 7,8,9

PARSE7 = xlist + mver + dcld + pagd + tabd + type + list + pma + fname + PARSE7(,P)
PARSE8 = xlist + mver + dcld + pagd + tabd + pma + pmc + list + PARSE8  
PARSE9 = xlist + dcld + tabd + pma + list + PARSE9(,P)  

; COMPILER --

; DECLARE PASS:

DECLAR = mver + dcld + pagd + tabd + aryd + pma + segswp + initia + simint + cdgndf + rfdef + pmc + DECLAR(,P)  
LSUBS = mver + dcld + pagd + tabd + pma + simint + rfdef + errnum + fname + LSUBS(,P)

; REL FILE GENERATION:

RFGEN = UDEF + G + RLFDEF + F + RFIDEF + RFGEN(,P)

; COMPIL:

COMPIL = mver + dcld + pagd + tabd + aryd + pma + simint + cdgndf + rfdef + comdf + pmc + errnum + COMPIL(,P)  

; CSUBS:

CSUBS = mver + dcld + pagd + tabd + aryd + pma + simint + cdgndf + rfdef + comdf + pmc + errnum + CSUBS(,P)  

; RUNSIDE ERRORS:

APRTRP = dcld + pagd + errnum + heddef + APRTRP ,; MATH TRAP
BKTR = xlist + dcld + pagd + tabd + pma + heddef + list + BKTR ,; BREAK,TRACE
ESC = xlist + dcld + heddef + list + ESC ,; ESC ROUTINE FOR PRODHD AND BKTR
RESUME = xlist + dcld + pagd + errnum + heddef + list + RESUME ,; RESUME
RPHED = xlist + dcld + list + RPHED + HEDDEF + HED
RUNERR = xlist + mver + dcld + pagd + tbadcl + segswp + initia + errnum + ocbmap + heddef + list + RUNERR(,P)  
RHED = xlist + dcld + list + RHED + HEDDEF + HED
RUNTRP = xlist + dcld + pagd + errnum + heddef + list + RUNTRP  
TBAMSG = TBAMSG

; Misc runside stuff (for now)

DODATE = dcld + pagd + tbadcl + DODATE
DSA = xlist + mver + dcld + pagd + errnum + list + DSA(,P) ,; CORE ALLOCATOR
GOSUB = xlist + dcld + pagd + errnum + list + GOSUB  
RLNDRY = xlist + ftrun + dcld + pagd + errnum + opnd + list + LNDRY  
ROPEN = xlist + ftrun + mver + dcld + pagd + errnum + opnd + ocbmap + list + OPEN(,P)  
RPAGER = xlist + ftrun + mver + dcld + list + pagd + errnum + opnd + ocbmap + pager(,P)  
RUNFUN = xlist + mver + dcld + pagd + ocbmap + iosym + list + RUNFUN ,; 
                                ,; TIME,TRU,SIZE,EIGHTI,EIGHTO,CIB,COB,
                            ,; LOL,TCP,WAIT,DATE,TERM,YEAR
X22INT = X22INT
ENABLE = ENABLE

; User library functions:

ARYBND = dcld + pagd + aryd + tbadcl + ARYBND
FILDAT = xlist + dcld + pagd + list + FILDAT(,P) ,; RETURN FILE DATE
FILPRS = xlist + dcld + pagd + aryd + tbadcl + list + FILPRS ,; FILE NOMEN PARSE
GETFUN = xlist + dcld + pagd + errnum + tbadcl + list + GETFUN ,; get free unit no
JOBNO = JOBNO ,; RETURN CURRENT JOB NO AS INTEGER
PROAUX = xlist + dcld + heddef + list + PRODEF + PROAUX
PROFIL = PRODEF + PROFIL
RUNUUO = xlist + dcld + pagd + list + RUNUUO(,P) ,; RUN SAVE FILE
SETEC = xlist + dcld + tbadcl + list + SETEC
SOAKEM = xlist + tbadcl + list + soakem ,; SOAKEM uuo
STREG = dcld + tbadcl + STREG ,;Value of register from RUN UUO time
UFDSCN = xlist + dcld + pagd + errnum + tbadcl + list + UFDSCN(,P) ,; SCAN UFD
xchrg = xchrg

; STRING:

RACMS = xlist + dcld + list + RACMS
RDXSS = xlist + dcld + pagd + list + RDXSS ,; DECLARE SCALAR STRING
RELSTR = RELSTR  
RSMREL = xlist + dcld + pagd + aryd + list + RSMREL ,; RELEASE STRING ARRAY
RXAS = xlist + mver + dcld + pagd + list + RXAS ,; STORE & REL STR PARAM
RXASC = xlist + dcld + pagd + list + RXASC  
RXRS = xlist + dcld + pagd + list + RXRS ,; EXIT STRING
STRING = xlist + mver + dcld + pagd + errnum + list + STRING  

; MATH --

; MATH Vol I of III  (A thru C)

ACOS = dcld + errnum + ACOS  
ASIN = xlist + dcld + errnum + list + ASIN  
ATAN = xlist + dcld + errnum + list + ATAN  
ATAN2 = xlist + dcld + errnum + list + ATAN2  
CABS = xlist + dcld + list + CABS  
CCPWR = xlist + dcld + errnum + list + CCPWR  
CDIV = xlist + dcld + errnum + list + CDIV  
CEXP = xlist + dcld + errnum + list + CEXP  
CIPWR = xlist + dcld + errnum + list + CIPWR  
CLOG = xlist + dcld + errnum + list + CLOG  
CMUL = xlist + dcld + errnum + list + CMUL  
COSH = xlist + dcld + errnum + list + COSH  
CSIN = xlist + dcld + list + CSIN  
CTAN = xlist + dcld + list + CTAN  

; MATH Vol II of III  (D thru P)

DDPWR = dcld + errnum + DDPWR  
DETINV = xlist + dcld + pagd + errnum + list + DETINV  
DEXP = xlist + dcld + list + DEXP  
DFIX = DFIX  
DINT = xlist + dcld + errnum + list + DINT  
DIPWR = xlist + dcld + errnum + list + DIPWR  
DLOG = xlist + dcld + errnum + list + DLOG  
DROUN = DROUN  
DSIN = xlist + dcld + list + DSIN  
DSING = xlist + dcld + list + DSING     ,;Double to Single Conversion
DTAN = xlist + dcld + list + DTAN  
MATINV = MATINV  
MFCMN = xlist + dcld + pagd + errnum + list + MFCMN  
POLR = xlist + dcld + errnum + list + POLR  

; MATH Vol III of III  (R thru Z)

RIPWR = dcld + errnum + RIPWR  
RNDA = RNDA  
RPWR = xlist + dcld + errnum + list + RPWR  
RRPWR = xlist + dcld + errnum + list + RRPWR  
SEXP = xlist + dcld + errnum + list + SEXP  
SFIX = SFIX  
SINH = xlist + dcld + errnum + list + SINH  
SINT = xlist + dcld + errnum + list + SINT  
SLOG = xlist + dcld + errnum + list + SLOG  
SQRT = xlist + dcld + errnum + list + SQRT  
SROUN = SROUN  
SSIN = SSIN  
STAN = xlist + dcld + list + STAN  
TANH = xlist + dcld + list + TANH  

; ARRAYS --

; ARRAY COMMON:

ARADAT = ARADAT  
ARYSCN = dcld + aryd + ARYSCN ,; SCAN ARR
CONF1 = xlist + dcld + pagd + aryd + errnum + list + CONF1 ,; CHECK CONFORMAL & TYPE CONV
CONF2 = xlist + pagd + aryd + errnum + list + CONF2 ,;   ditto
CONV2 = xlist + dcld + list + CONV2 ,; ARR TYPE CONVERSON SUBROUTINE
CONVRT = xlist + dcld + pagd + aryd + list + CONVRT ,; ARR TYPE CONV

; ARRAY DETAIL Vol I of II (RAACT thru REzzzz)

RAACT = mver + dcld + aryd + RAACT ,; ARR-ARRAY CONCAT
RACMMX = xlist + mver + dcld + pagd + aryd + list + RACMMX ,; STORE ARAY
RACXMX = xlist + dcld + pagd + list + RACXMX ,; EXCHANGE ARR
RAIDN = xlist + dcld + pagd + aryd + errnum + list + RAIDN ,; IDN
RAINT = xlist + dcld + pagd + aryd + errnum + list + RAINT ,; ARR INTERSECTION
RAMD = xlist + mver + dcld + pagd + aryd + errnum + list + RAMD ,; EXIT ARR
RAMUL = xlist + dcld + pagd + aryd + list + RAMUL ,; MAT MUL
RDXMX = xlist + dcld + pagd + aryd + errnum + list + RDXMX ,; DCL ARR
REECMP = REECMP ,; COMPLEX ELET BT ELET OPS
REEOPS = xlist + dcld + pagd + aryd + errnum + list + REEOPS ,; ELET x ELET OPS
REEPWR = REEPWR ,; ELET x ELET POWERS
REPWR = xlist + dcld + pagd + aryd + errnum + list + REPWR ,; ARR EL x EL EXP

; ARRAY DETAIL Vol II of II (RF    thru zzzzzz)

RGSLC = dcld + pagd + aryd + errnum + RGSLC ,; DCL SUBARRAY
RINTP = xlist + dcld + list + RINTP ,; STOP END PAUSE QUIT LOG
RMAD = xlist + mver + dcld + pagd + aryd + errnum + list + RMAD ,; COPY ARR DES.
RMPWR = xlist + dcld + pagd + aryd + errnum + list + RMPWR ,; MAT EXP
RMSOP = xlist + dcld + pagd + aryd + errnum + list + RMSOP ,; ARR x SCALAR OPS
RMTRN = xlist + dcld + pagd + aryd + errnum + list + RMTRN ,; TRANSPOSE
RNEGA = xlist + dcld + pagd + aryd + errnum + list + RNEGA ,; NEGATE
RSACT = xlist + mver + dcld + aryd + errnum + list + RSACT ,; SCALAR-ARRAY CONCAT
RSROP = xlist + pagd + errnum + list + RSROP ,; # = >> <<
RSSA = xlist + dcld + pagd + aryd + errnum + list + RSSA ,; STORE SCALAR TO ARR
RXAMX = xlist + dcld + pagd + aryd + errnum + list + RXAMX ,; STORE AND REL ARR PARAM

; IO --

; User Files:

LASPAG = mver + dcld + pagd + LASPAG ,; WRITE OUT LAST PAGE OF USER FILE
RCLOS = xlist + dcld + pagd + errnum + list + RCLOS ,; CLOSE USER FILE
RCOPY = xlist + mver + dcld + pagd + errnum + list + RCOPY(,P) ,; COPY FROM ONE FILE TO ANOTHER
RERAS = xlist + mver + dcld + pagd + errnum + list + RERAS ,; ERASE PART OF A USER FILE
RLOC = xlist + dcld + pagd + ocbmap + list + RLOC ,; GET CURRENT LOCATION OF USER FILE
RLOCAT = xlist + dcld + pagd + errnum + ocbmap + list + RLOCAT ,; CHANGE LOCATION IN USER FILE
ROKFIL = xlist + dcld + pagd + errnum + list + ROKFIL ,; CHECK FILE IS OPEN
RRMOV = xlist + dcld + pagd + errnum + list + RRMOV ,; REMOVE FILE
RRNAM = xlist + dcld + pagd + errnum + opnd + list + RRNAM(,P) ,; RENAME FILE
UOPEN = xlist + dcld + pagd + errnum + ocbmap + list + UOPEN ,; OPEN USER FILE
RLOCK = xlist + dcld + pagd + errnum + list + RLOCK ,; CLUB-LOCK LOCATION ON FILE

; IO Vol I of II (A thru M)

DECONT = dcld + ocbmap + iosym + DECONT  
FFID = xlist + dcld + pagd + errnum + ocbmap + iosym + list + FFID  
FPRINT = xlist + mver + dcld + pagd + ocbmap + iosym + list + FPRINT  
IDCNVN = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IDCNVN  
IDINPT = xlist + mver + dcld + pagd + initia + errnum + ocbmap + iosym + list + IDINPT  
IOIDRV = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IOIDRV  
IOINIT = xlist + dcld + pagd + list + IOINIT  
IOISCN = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IOISCN  
IOISUB = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IOISUB  
IOSTOR = IOSTOR  
IOSUB = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IOSUB  
IWC = xlist + mver + dcld + pagd + ocbmap + iosym + list + IWC  

; IO Vol II of II (N thru Z)

OCHRFL = dcld + pagd + errnum + ocbmap + iosym + OCHRFL  
PRINT = xlist + mver + dcld + pagd + aryd + errnum + ocbmap + iosym + list + PRINT  
RAST1 = xlist + dcld + pagd + ocbmap + iosym + list + RAST1  
RAVL1 = xlist + dcld + pagd + ocbmap + iosym + list + RAVL1  
RINPT = xlist + dcld + ocbmap + iosym + list + RINPT  
RRHDLR = xlist + dcld + pagd + ocbmap + list + RRHDLR  
RSIC = xlist + ftrun + dcld + tabd + pma + list + SIC
RSST1 = xlist + dcld + pagd + ocbmap + iosym + list + RSST1  
RSVL1 = xlist + dcld + pagd + ocbmap + iosym + list + RSVL1  
SFF = xlist + mver + dcld + pagd + errnum + ocbmap + list + SFF  
SIP = xlist + dcld + pagd + errnum + ocbmap + iosym + list + SIP  
STRSTR = xlist + dcld + pagd + ocbmap + iosym + list + STRSTR  

; FORMS:

IOFDRV = dcld + pagd + tbadcl + errnum + ocbmap + iosym + IOFDRV  
IOFSCN = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IOFSCN  
IOFSUB = xlist + dcld + pagd + errnum + ocbmap + iosym + list + IOFSUB  

; IO errors:

CVTERR = dcld + pagd + errnum + ocbmap + iosym + CVTERR  
ENDFIL = xlist + dcld + pagd + errnum + ocbmap + iosym + list + ENDFIL  
ERROR = xlist + dcld + pagd + errnum + list + ERROR  
FILERR = xlist + dcld + pagd + errnum + ocbmap + iosym + list + FILERR  
FMTERR = xlist + dcld + pagd + errnum + list + FMTERR  
PRFMT = xlist + dcld + ocbmap + list + PRFMT  

    