; shortcut to this file gets pasted into C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
 
; disable capslock entirely
SetCapsLockState, AlwaysOff
+Capslock::Capslock
 

; vim remappings
CapsLock & j::Send  {Down}
CapsLock & k::Send {Up}
CapsLock & h::Send {Left}
CapsLock & l::Send {Right}