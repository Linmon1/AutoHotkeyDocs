#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

; Only run if Chrome is active (SAFETY)
If !WinActive("ahk_exe chrome.exe")
    Return

Random, pick, 1, 30

chaos :=
(Join`n
"I won and the room temperature changed"
"the shoe exhaled"
"i won in italics"
"this win is damp"
"approved by ceiling"
"something blinked and money appeared"
"i feel taller after that hand"
"the cards nodded"
"that payout arrived sideways"
"this feels fluorescent"
"i didn’t consent to winning"
"the math escaped"
"chairs"
"that win has shoes on"
"i am soup now"
"correct horse battery staple"
"this is a mirror"
"the outcome is wet"
"the table sighed"
"yes. that."
"i should write this down"
"this win made eye contact"
"the universe blinked"
"this has trap energy"
"nothing is real but okay"
"i won but not like this"
"something ancient approved"
"that was loud in my bones"
"the numbers agreed briefly"
"absolutely not but yes"
)

StringSplit, lines, chaos, `n
message := lines%pick%

; Save clipboard
ClipSaved := ClipboardAll
Clipboard := message
Sleep 100
Send ^v
; Optional auto-send:
; Send {Enter}
Sleep 100
Clipboard := ClipSaved
Return
