#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
; Rob's Lightroom stuff
; Turns capslock off while this script is running.
SetCapsLockState, AlwaysOff

capslock & escape:: exitapp 
g:: x
e:: u
a:: left
w:: up
s:: down
d:: right
$z:: ^z
space:: enter
c:: ^u
f:: q
