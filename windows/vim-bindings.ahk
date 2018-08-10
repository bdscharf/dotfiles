; shortcut to this file gets pasted into C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
; swap alt and control keys using sharpkeys
 

; disable capslock entirely
SetCapsLockState, AlwaysOff
+Capslock::Capslock
 

; vim remappings
CapsLock & j::Send {Down}
CapsLock & k::Send {Up}
CapsLock & h::Send {Left}
CapsLock & l::Send {Right}
 

CapsLock & d::Send {PgDn}
CapsLock & u::Send {PgUp}