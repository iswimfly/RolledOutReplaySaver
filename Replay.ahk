#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ReplayCounter = 1

TimeString = 12345
NewTime = 67890
// Add Keyboard Command Here

^S::
FormatTime, NewTime, , HHmm-MMddyy
if (TimeString == NewTime)
{
    ReplayCounter++
}
Else
{
    ReplayCounter = 1
}
FormatTime, TimeString, , HHmm-MMddyy
FileCopy, %A_ScriptDir%\temp.roreplay, %A_ScriptDir%\%TimeString%Replay%ReplayCounter%.*, Overwrite
MsgBox %TimeString%, %NewTime% %ReplayCounter%
return

^Q::
ExitApp