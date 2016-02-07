' ShortDays   = 1 to 13
' ShortMonths = 1 to 20
' LongMonths  = 1 to 18 (*20) + 1 (*5)

Set objStdOut = WScript.StdOut
Wscript.StdOut.Write "Enter The Date to Search : " 
strDate = Wscript.StdIn.ReadLine


Const ForReading = 1, ForWriting = 2, ForAppending = 8
Set objFSO = CreateObject("Scripting.FileSystemObject")
        sRootPath = Replace(WScript.ScriptFullName, WScript.ScriptName, "")
'        objLogFilePath = sRootPath & "MC.txt"
'If Not objFSO.FileExists(objLogFilePath) Then
'        Set objLogFile = objFSO.CreateTextFile(objLogFilePath,8)
'Else
'        Set objLogFile = objFSO.OpenTextFile(objLogFilePath,2)
'        objLogFile.Write ""
'        objLogFile.Close
'        Set objLogFile = objFSO.OpenTextFile(objLogFilePath,8)
'End If



startTime = Time()

' SD = ShortDay
SDcount = 4
' SM = ShortMonth
SMcount = 20
' LD = LongDay
LDcount = 8
' LM = LongMonth
LMcount = 18
' CFZ = CountFromZero
CFZ = 0


' sDay
' sMonth
' sYear
' sBCAD

sDay = 13
sMonth = 8
sYear = 3114
sBCAD = "BC"

        If Len(sDay) = 1 Then
                strDay = "0" & sDay
        Else 
                strDay = sDay
        End If
        If Len(sMonth) = 1 Then
                strMonth = "0" & sMonth
        Else
                strMonth = sMonth
        End If
                
        sFullDate = strDay & "/" & strMonth & "/" & sYear & " " & sBCAD 
        
        

Do While sFullDate <> strDate

If SMcount = 1 Then
        SMname = "Imix" & vbTab 
ElseIf SMCount = 2 Then
        SMname = "Ik" & vbTab
ElseIf SMCount = 3 Then
        SMname = "Akbal" & vbTab
ElseIf SMCount = 4 Then
        SMname = "Kan" & vbTab
ElseIf SMCount = 5 Then
        SMname = "Chicchan"
ElseIf SMCount = 6 Then
        SMname = "Cimi" & vbTab
ElseIf SMCount = 7 Then
        SMname = "Manik" & vbTab
ElseIf SMCount = 8 Then
        SMname = "Lamat" & vbTab
ElseIf SMCount = 9 Then
        SMname = "Muluc" & vbTab
ElseIf SMCount = 10 Then
        SMname = "Oc" & vbTab
ElseIf SMCount = 11 Then
        SMname = "Chuen" & vbTab
ElseIf SMCount = 12 Then
        SMname = "Eb" & vbTab
ElseIf SMCount = 13 Then
        SMname = "Ben" & vbTab
ElseIf SMCount = 14 Then
        SMname = "Ix" & vbTab
ElseIf SMCount = 15 Then
        SMname = "Men" & vbTab
ElseIf SMCount = 16 Then
        SMname = "Cib" & vbTab
ElseIf SMCount = 17 Then
        SMname = "Caban" & vbTab
ElseIf SMCount = 18 Then
        SMname = "Etznab" & vbTab
ElseIf SMCount = 19 Then
        SMname = "Cauac" & vbTab
ElseIf SMCount = 20 Then
        SMname = "Ahau" & vbTab
End If  



If LMcount = 1 Then
        LMname = "Pop"
ElseIf LMcount = 2 Then
        LMname = "Uo"
ElseIf LMcount = 3 Then
        LMname = "Zip"
ElseIf LMcount = 4 Then
        LMname = "Zotz"
ElseIf LMcount = 5 Then
        LMname = "Zec"
ElseIf LMcount = 6 Then
        LMname = "Xul"
ElseIf LMcount = 7 Then
        LMname = "Yaxkin"
ElseIf LMcount = 8 Then
        LMname = "Mol"
ElseIf LMcount = 9 Then
        LMname = "Chen"
ElseIf LMcount = 10 Then
        LMname = "Yax"
ElseIf LMcount = 11 Then
        LMname = "Zac"
ElseIf LMcount = 12 Then
        LMname = "Ceh"
ElseIf LMcount = 13 Then
        LMname = "Mac"
ElseIf LMcount = 14 Then
        LMname = "Kankin"
ElseIf LMcount = 15 Then
        LMname = "Muan"
ElseIf LMcount = 16 Then
        LMname = "Pax"
ElseIf LMcount = 17 Then
        LMname = "Kayab"
ElseIf LMcount = 18 Then
        LMname = "Kumku"
ElseIf LMcount = 19 Then
        LMname = "Uayeb"
End If  

        If Len(sDay) = 1 Then
                strDay = "0" & sDay
        Else 
                strDay = sDay
        End If
        If Len(sMonth) = 1 Then
                strMonth = "0" & sMonth
        Else
                strMonth = sMonth
        End If
                
        sFullDate = strDay & "/" & strMonth & "/" & sYear & " " & sBCAD 
        
        
        cBaktun = Int(CFZ / 144000)
        NewCount = CFZ - (144000 * cBaktun)
        
        cKatun = Int(NewCount / 7200)
        NewCount = NewCount - (7200 * cKatun)
        
        cTun = Int(NewCount / 360)
        NewCount = NewCount - (360 * cTun)
        
        cUinal = Int(NewCount / 20)
        NewCount = NewCount - (20 * cUinal)
        
        cKin = Int(NewCount / 1)
        NewCount = NewCount - (1 * cKin)
        
        
        
        
        
'       objStdOut.WriteLine SDcount & vbTab & SMname & vbTab & LDcount & vbTab & LMname & vbTab & sDay & vbTab & _
'                                               sMonth & vbTab & sYear & vbTab & sBCAD & vbTab & "[" & CFZ & "]" & vbTab & sFullDate
'objStdOut.WriteLine SDcount & vbTab & SMname & vbTab  & LDcount & vbTab  & LMname & vbTab & sFullDate & _
 '                                               vbTab & ">" & CFZ & "<" & vbTab & vbTab & cBaktun & "." & cKatun & "." & cTun & "." & _
 '                                       cUinal & "." & cKin & vbTab & vbTab &  "[" & cBaktun & " "  & "Baktun" & " "  & cKatun & " " & "Katun" & " " & cTun & " " & "Tun" & " " & cUinal & " " & "Uinal" & " " & cKin & " " & "Kin" & "]" 
                                        
                                        
'objLogFile.WriteLine SDcount & vbTab & SMname & vbTab  & LDcount & vbTab  & LMname & vbTab & sFullDate & _
'                                                vbTab & ">" & CFZ & "<" & vbTab & vbTab & cBaktun & "." & cKatun & "." & cTun & "." & _
'                                        cUinal & "." & cKin & vbTab & vbTab &  "[" & cBaktun & " "  & "Baktun" & " "  & cKatun & " " & "Katun" & " " & cTun & " " & "Tun" & " " & cUinal & " " & "Uinal" & " " & cKin & " " & "Kin" & "]" 
        
        SDcount = SDcount + 1
        SMcount = SMcount + 1
        LDcount = LDcount + 1
        If LMcount = 19 and LDcount > 5 Then
                LMcount = 1
                LDcount = 1
        ElseIf LDcount > 20 Then
                LMcount = LMcount + 1
                LDcount = 1
        End If
        
        If SDcount > 13 then
                SDcount = 1
        End If
        If SMcount > 20 Then
                SMcount = 1
        End If
        
        CFZ = CFZ + 1
        
        
        sDay = sDay + 1
        If sMonth = 4 or sMonth = 6 or sMonth = 9 or sMonth = 11 Then
                If sDay > 30 Then
                        sMonth = sMonth + 1
                        sDay = 1
                End If
        ElseIf sMonth = 1 or sMonth = 3 or sMonth = 5 or sMonth = 7 or sMonth = 8 or sMonth = 10 or sMonth = 12 Then
                If sDay > 31 Then
                        If sMonth = 12 Then 
                                If sBCAD = "BC" Then
                                        sYear = sYear - 1
                                        If sYear = 0 Then
                                                sYear = 1
                                                sBCAD = "AD"
                                        End If
                                Else 
                                        sYear = sYear + 1
                                End If
                                sMonth = 1
                                sDay = 1
                        Else
                                sMonth = sMonth + 1
                                sDay = 1
                        End If
                        
                End If
        ElseIf sMonth = 2 Then
                if sYear mod 400 = 0 Then
                        If sDay > 29 Then
                                sMonth = sMonth + 1
                                sDay = 1
                        End If
                Elseif sYear mod 100 = 0 Then
                        If sDay > 28 Then
                                sMonth = sMonth + 1
                                sDay = 1
                        End If
                Elseif sYear mod 4 = 0 Then
                        If sDay > 29 Then
                                sMonth = sMonth + 1
                                sDay = 1
                        End If
                Else
                        If sDay > 28 Then
                                sDay = 1
                        End If
                End If  
        End If
        


Loop
EndTime = Time()
objStdOut.WriteLine SDcount & vbTab & SMname & vbTab  & LDcount & vbTab  & LMname & vbTab & sFullDate & _
                                                vbTab & ">" & CFZ & "<" & vbTab & vbTab & cBaktun & "." & cKatun & "." & cTun & "." & _
                                        cUinal & "." & cKin & vbTab & vbTab &  "[" & cBaktun & " "  & "Baktun" & " "  & cKatun & " " & "Katun" & " " & cTun & " " & "Tun" & " " & cUinal & " " & "Uinal" & " " & cKin & " " & "Kin" & "]" 
  
objStdOut.WriteLine startTime & vbTab & ">>" & vbTab & EndTime

objStdOut.close
'objLogFile.Close
