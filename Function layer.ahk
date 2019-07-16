#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

; Turns capslock off while this script is running.
SetCapsLockState, AlwaysOff


;----------------------------------global hotkeys


; You can make capslock your modifier by putting
; CapsLock & <Whatever Key>
; Capslock Arrow Keys
CapsLock & j::left
CapsLock & k::down
CapsLock & l::right
CapsLock & i::up
CapsLock & a:: run C:\Program Files\Notepad++\notepad++.exe
CapsLock & e:: run C:\Users\Rob's\Desktop\Autohotkey\lightroom.ahk



;---------------------------------------------------------
; Ctrl CapsLock togles layer 1
;---------------------------------------------------------

Layer1 := false

^CapsLock::
	if (Layer1 == true) {
		Layer1 := false
		ToolTip Layer 1 is off
		SetTimer, RemoveToolTip, 1000
		return
	} else {
		Layer1 := true
		ToolTip Layer 1 is on
		SetTimer, RemoveToolTip, 1000
		return
	}
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return 


$c::
	if (Layer1 == true) {
		Send ^c
	} else {
		Send {c}
	}
return

$v::
	if (Layer1 == true) {
		Send ^v
	} else {
		Send {v}
	}
return

$a::
	if (Layer1 == true) {
		Send ^a
	} else {
		Send {a}
	}
return

$sc027::
	if (Layer1 == true) {
		Send {sc027}-------------------------------------- {enter}{sc027}
	} else {
		Send {sc027}
	}
return

