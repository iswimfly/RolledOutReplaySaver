#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ReplayCounter = 1

TimeString = 123456

// Add Keyboard Command Here

^S::
FormatTime, TimeString, , MMddyy
FileCopy, %A_ScriptDir%\temp.roreplay, %A_ScriptDir%\%TimeString%Replay%ReplayCounter%.*, Overwrite
IfExist, %A_ScriptDir%\%TimeString%Replay%ReplayCounter%.roreplay
    ReplayCounter++
return

^Q::
ExitApp