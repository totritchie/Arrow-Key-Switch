#Requires AutoHotkey v2.0

; Map CapsLock + I, J, K, L as arrow keys
CapsLock & i::Send("{Up}")
CapsLock & j::Send("{Left}")
CapsLock & k::Send("{Down}")
CapsLock & l::Send("{Right}")
#HotIf GetKeyState("Ctrl")
CapsLock & i::Send("{Ctrl down}{Up}{Ctrl up}")
CapsLock & j::Send("{Ctrl down}{Left}{Ctrl up}")
CapsLock & k::Send("{Ctrl down}{Down}{Ctrl up}")
CapsLock & l::Send("{Ctrl down}{Right}{Ctrl up}")