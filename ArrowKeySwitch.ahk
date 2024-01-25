#Requires AutoHotkey v2.0

; Prevent CapsLock from toggling on
CapsLock::return

; Map CapsLock + I, J, K, L as arrow keys
CapsLock & i::Send("{Up}")
CapsLock & j::Send("{Left}")
CapsLock & k::Send("{Down}")
CapsLock & l::Send("{Right}")

; New mappings as requested
CapsLock & u::Send("{Home}")
CapsLock & o::Send("{End}")
CapsLock & h::Send("{Backspace}")
CapsLock & `;::Send("{Delete}")

#HotIf GetKeyState("Ctrl")
CapsLock & i::Send("{Ctrl down}{Up}{Ctrl up}")
CapsLock & j::Send("{Ctrl down}{Left}{Ctrl up}")
CapsLock & k::Send("{Ctrl down}{Down}{Ctrl up}")
CapsLock & l::Send("{Ctrl down}{Right}{Ctrl up}")
CapsLock & u::Send("{Ctrl down}{Home}{Ctrl up}")
CapsLock & o::Send("{Ctrl down}{End}{Ctrl up}")
CapsLock & h::Send("{Ctrl down}{Backspace}{Ctrl up}")
CapsLock & `;::Send("{Ctrl down}{Delete}{Ctrl up}")
CapsLock::Send("{CapsLock}")
