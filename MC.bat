@ECHO OFF



cls
ECHO. 

FOR /F "tokens=*" %%A IN ('DATE/T') DO FOR %%B IN (%%A) DO SET Today=%%B
FOR /F %%A IN ('TIME/T') DO SET Now=%%A

Set StartTime = %Now%


ECHO.                                                               ,LED1:                           
ECHO.                                                              ZQQQQQQQ7       
ECHO.               .:7j2hPYriri:,                                QQQr  ,XXJ      
ECHO.             ,rjSZQQR0DDbXpp9Ur.                            :QQQ               
ECHO.            :9R9FZD2LpED9pFDZZZMh:                           QQQr  .QQQ       
ECHO.          :JR0c:::: ,.::7rUbQQQMMpL.                          QQQQQQQQc       
ECHO.         ,tRE:            :JPR90EDXJ,          .,,   , ,.       .ii:       
ECHO.          YZ7                 ,.JbRU,          QQQQQQQQQQi                  QQQQQQQQR        
ECHO.         ,jDi                  .70MRL          :.,tQQQ .:                   QQQ:  QQQr       
ECHO.         rFDL                 .:rtb7J.            rQQQ       2MQQQQQ1       QQQQQQQQ1       
ECHO.        .S9P:                  .iYh2YL            LQQQ      cQ.., :QRRQ     QQQ:  YQQQ       
ECHO.        rbM2:.ii:....   ..:7jJcr7jRjUF,           SQQQ      QZ    :i,Qb     QQQQZZQQQQ      
ECHO.        2R9h7XRQQQXSS: :RRPQQQQQZhY7Y9:           .7rr      Q.       Q,     jfYFXpcr.        
ECHO.      .EQQRJfJ2SPPtU9. iRP1JSP92FFSRbfi                    iQ   :   2Q        
ECHO.     :PQZ0Xr::.:...7:  .:r...:.:77rhJ27.                   QQpZQQ   Q7       
ECHO.     ,,7Mcir,,...,.,.  ::  ,....:.7r                       Ur, Q7  .Q2Z:       
ECHO.        iU:Y:       .  :i      ..rjj.                         JQ   :rQQ          
ECHO.         ihXj.,     ::.ir,    .:rJhPr                         Q:     Q,   .        
ECHO.          :99i,   :jbf:LSDU7. .7rcjL:                        EQ     QQXMQQr          
ECHO.          YUSji,,LtJY:iirJ7rtr777r7i.                         Q.     J:, QQ          
ECHO.          L.r0iiUF.  ...,,,,rpU:Jf:,                        ZQ         :Q       
ECHO.            t2.YD7    ,   .:cX0tQp                         .QQ0Q:      QJ        
ECHO.         , iQ9 iEhYi., ,.rLF1hUERZ:                        :i 9Q      MQ       
ECHO.   ,:7U2b1SQQr,:R0X1hJr72SpXPhXpQZRZ2i.                    :i 9Q      MQ       
ECHO. Phhri.,  FQbi..pQM9hXX0PXXZZRRQQQMRQQb0fr.,                  Q:     ,Q,      
ECHO. Rbpp9ZE00QQQL. .PQQQQQQQRQQQQQFbRRRQRQRQZRRP                LQYfR   Q0       
ECHO. QQQQQQQQQQQQ7,. .7XEQQRSQQQpL:i2QRQRQRMRtLDE                fSiQQ  UQ        
ECHO. RRRRQQQRZQQQt,,.,,,  :..i7:,.:.9QRMMZRZDRRRZ                   Q0  Qi     
ECHO. RDQZQRR0QRQQQ  .:.:..,..:..::,:RQRRDbZRMRMQE                   Q: QQ        
ECHO. RMQQQQRRQQRQQ:  .::i::::::::, iQZRQQQQRRRRRZ                  .Q .Q          
ECHO. QRQQQQQQQQQQQQt,  ,,...,,,. ,.LQMZQRQRRZQRQZ                   LQ Qc          
ECHO. D0D0DRD00RbpXR9bL           :71Rpb9E90P9pb0S                  QUJQ   
ECHO.                                                         QhQ,    
ECHO.                                                         QQ1 
ECHO.                                                        :QQ 
ECHO.                                                        bQ.
ECHO.                                                        QQ         














ECHO.

ECHO. *********************************************************************
ECHO. ** Copyright (C) 1977-2012, DaleTRONICS. All Rights Reserved       **
ECHO. ** MayaCalendar Reg. VL. Pat.and Tm. Off. Patent No. 1337,666,1977 **
ECHO. ** Patent Pending                                                  **
ECHO. ** DALESU %Today%     %Now%                                     **
ECHO. *********************************************************************
@ping 127.0.0.1 -n 2 -w 1000 > nul
ECHO.


@ping 127.0.0.1 -n 2 -w 3000 > nul




CScript //nologo MC.vbs
@ping 127.0.0.1 -n 2 -w 4000 > nul

ECHO.
pause

