#Requires AutoHotkey v2.0

; Prevent CapsLock from toggling on
CapsLock::return

; Map CapsLock + I, J, K, L as arrow keys
CapsLock & i::Send("{Up}")
CapsLock & j::Send("{Left}")
CapsLock & k::Send("{Down}")
CapsLock & l::Send("{Right}")
CapsLock & h::Send("{Ctrl down}{Left}{Ctrl up}")
CapsLock & `;::Send("{Ctrl down}{Right}{Ctrl up}")
CapsLock & u::Send("{Backspace}")
CapsLock & y::Send("{Ctrl down}{Backspace}{Ctrl up}")
CapsLock & o::Send("{Delete}")
CapsLock & p::Send("{Ctrl down}{Delete}{Ctrl up}")
CapsLock & n::Send("{Home}")
CapsLock & m::Send("{End}")

; CapsLock + Space to simulate the Menu key (context menu)
CapsLock & Space::Send("{AppsKey}")

; CapsLock + W, S, Q combinations
CapsLock & w::Send("{Shift down}{Alt down}i{Alt up}{Shift up}")
CapsLock & s::Send("{Shift down}{Alt down}k{Alt up}{Shift up}")
CapsLock & q::Send("{Shift down}{Alt down}u{Alt up}{Shift up}")

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

#HotIf GetKeyState("Shift")
CapsLock & i::Send("{Shift down}{Up}{Shift up}")
CapsLock & j::Send("{Shift down}{Left}{Shift up}")
CapsLock & k::Send("{Shift down}{Down}{Shift up}")
CapsLock & l::Send("{Shift down}{Right}{Shift up}")
CapsLock & h::Send("{Shift down}{Ctrl down}{Left}{Ctrl up}{Shift up}")
CapsLock & `;::Send("{Shift down}{Ctrl down}{Right}{Ctrl up}{Shift up}")
