; # -> Windows
; ! -> Alt
; ^ -> Ctrl
; + -> Shift
; https://www.autohotkey.com/docs/Hotkeys.htm


;LAUNCHER
;^!+# + A


;Shft PrintScreen -> Snagit -> Repeat Last Capture
;
;Ctrl + A
;Ctrl + B
;Ctrl + C
;Ctrl + D
;Ctrl + E
;Ctrl + F
;Ctrl + G
;Ctrl + H
;Ctrl + I 
;Ctrl + J
;Ctrl + K
;Ctrl + L
;Ctrl + M
;Ctrl + N 
;Ctrl + O
;Ctrl + P
;Ctrl + Q
;Ctrl + R
;Ctrl + S
;Ctrl + T
;Ctrl + U
;Ctrl + V
;Ctrl + W
;Ctrl + X
;Ctrl + Y
;Ctrl + Z
;Ctrl + F1 -> AHK Scrip -> Snagit -> Grab Text
;Ctrl + F2 -> Snagit -> Show/hid Snagit
;Ctrl + F3 ->
;Ctrl + F4 -> 
;Ctrl + F5 -> 
;Ctrl + F6 -> 
;Ctrl + F7 -> 
;Ctrl + F8 -> Snagit -> Grab Text
;Ctrl + F9 
;Ctrl + F10 -> WinMinimize, A
;Ctrl + F11 -> Obsidian -> Clear current line
;Ctrl + F12 -> Obsidian -> Copy Line Up
;Ctrl + F13 -> Obsidian -> Copy Line down
;Ctrl + F14 -> Obsidian -> Insert line above
;Ctrl + F15 -> Obsidian -> Insert line below
;Ctrl + F16 -> Obsidian -> Toggle Bulleted or Numbered lists
;Ctrl + F17 -> Obsidian -> Toggle Todo lists
;Ctrl + F18 -> Obsidian -> Toggle Line block quote
;Ctrl + F19 -> Obsidian -> Create New Internal page with highlighted text
; Ctrl + F20 -> Obsidian -> Add a line break

;Alt + Ctrl + Shft + A -> Obsidian -> Select Whole Line and Cut
;**Alt + Ctrl + Shft + B -> 
;Alt + Ctrl + Shft + C -> Anki -> Same Cloze
;Alt + Ctrl + Shft + D -> Archive Google Text Message
;Alt + Ctrl + Shft + E -> Upper Right Corner
;Alt + Ctrl + Shft + F -> Obsidian -> Copy and Search in Google Image
;**Alt + Ctrl + Shft + G ->Move Outlook to @A1
;Alt + Ctrl + Shft + H -> Anki -> Unformat
;Alt + Ctrl + Shft + I -> XXX
;**Alt + Ctrl + Shft + J -> Move Outlook to ~Ref
;Alt + Ctrl + Shft + K -> Obsidian -> Copy and Search in Google and Amboss
;**Alt + Ctrl + Shft + L -> Move Outlook to ^WF
;Alt + Ctrl + Shft + M -> Snap-it -> Close Image-to-text
;Alt + Ctrl + Shft + N -> AHK Refresh
;Alt + Ctrl + Shft + O -> XXX
;Alt + Ctrl + Shft + P -> Archive What's app
;Alt + Ctrl + Shft + Q - XXX
;Alt + Ctrl + Shft + R -> Open What's App
;Alt + Ctrl + Shft + S -> Open Oryx To Revise Layout
;Alt + Ctrl + Shft + T -> Youtube Search
;Alt + Ctrl + Shft + U -> Picpic -> Capture Screen
;Alt + Ctrl + Shft + V -> Picpic-> Recapture Screen (for recurrent stills)
;Alt + Ctrl + Shft + W -> Anki -> Clear Fields
;Alt + Ctrl + Shft + X -> Anki -> Unformat #2
;Alt + Ctrl + Shft + Y -> Search what you've already copied
;Alt + Ctrl + Shft + Z -> Copy, open new tab and search it



;Alt + Win + A -> Left Delete Whole Line
;Alt + Win + B -> XXX
;Alt + Win + C -> Select Whole Line
;Alt + Win + D
;Alt + Win + E -> 
;Alt + Win + F
;Alt + Win + G -> XXX
;Alt + Win + H -> Obsidian -> Toggle Folds Closed
;Alt + Win + I -> Obsidian -> Toggle Folds Open
;Alt + Win + J -> Obsidian -> Insert Current Date
;Alt + Win + K -> Obsidian -> Parse Natural Languabe Date
;Alt + Win + L -> Obsidian -> Add this note to a daily note for review
;Alt + Win + ; -> Obsidian -> Add this block to a daily note for review
;Alt + Win + M -> Open Calender
;Alt + Win + N -> Open OneNote
;Alt + Win + O -> Obsidian Import Template
;Alt + Win + P -> 
;Alt + Win + Q -> Obsidian ->
;Alt + Win + R -> XXX
;Alt + Win + S -> Obsidian ->
;Alt + Win + T -> Open Todoist
;Alt + Win + U -> 
;Alt + Win + V -> XXX
;Alt + Win + W -> XXX
;Alt + Win + X -> Obsidian -> Fold Current Line
;Alt + Win + Y
;Alt + Win + Z -> Open Windows Explorer





;Alt + Win + U -> Obsidian -> Swap Down Line
{
Send, !#u
}
return


;Alt + Win + E -> Obsidian -> Swap Up Line
{
Send, !#e
}
return



CoordMode, Mouse, Screen

^!+LWin::send {Blind}{vk07} ; Turns off Office Hotkeys from loading
return


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;HYPER LAUNCHER:

;;################################################################################
;; Power Left Hand Row 1
;;################################################################################

^!+#z:: ;This is for BCC email field for @WF Gmail
{
Send, +^B
Send, {1}
Sleep, 200
Send, {enter}
} 
return


^!+#x:: ;Gmail - Move to *WF
{
Send, v
Sleep, 100
Send, {*}
Sleep, 100
Send, {enter}
} 
return


^!+#c:: ; Gmail - Move to @A1
{
Send, v
Sleep, 100
Send, {@}
Sleep, 100
Send, {enter}
} 
return


^!+#v:: ; Archieve Gmail
{
Send, {[}
}
return

^!+#b:: ; Uncomments something
{
Send, ^x
Send, {Backspace}
Send, {Backspace}
Send, {Delete}
Send, {Delete}
Send, ^v
}
return



;;################################################################################
;; Power Left Hand Row 2
;;################################################################################

^!+#a:: Run, chrome.exe "https://calendar.google.com/calendar/u/0/r/week?tab=mc" " --new-window "



^!+#s::
{
Run, chrome.exe "https://todoist.com/app/filter/2322224036" " --new-window "
Sleep, 500
Send, #{Up}
Sleep, 1000 
Send, q
} 
return


^!+#d::
{
    WinMinimize, A
}
return


^!+#f:: ; Open Master Spotlight open p
{
Send , !{space}
Send , ^a
Send , {Del}
}
return 


^!+#g:: ; paste without format
{
Send, {{}{{}{c}{1}{:}{:} ; Sends {{c1::
Clipboard := Clipboard
Send ^v
Sleep, 100
Send, {}}{}} ; Sends
Sleep, 100
}
Return


;;################################################################################
;; Power Left Hand Row 3
;;################################################################################

^!+#q::
{
Send, q
Sleep, 50
SendInput, Quick-Diagnosis
Sleep, 50
MouseMove, 115, 98
Sleep, 50
Click
Sleep, 50
MouseMove, 272, 106
Sleep, 50
Click
} 
return


^!+#w::
{
Send, #{down}
}
return


^!+#e:: ; Anki Quick Diagnosis Clear
{
Send, ^{Enter}
Sleep, 50
Send, ^a
Sleep, 50
Send, {Delete}
Sleep, 50
Send, {Tab}
Sleep, 50
Send, ^a
Sleep, 50
Send, {Delete}
Sleep, 50
MouseMove, 1014, 1184
Click
Sleep, 50
Send, ^a
Sleep, 50
Send, {BackSpace}
Sleep, 50
MouseMove, -1179, 538
Click
}
return



^!+#r:: ; Anki Quick Diagnosis Add
{
MouseMove, 2602, 189
Click
Send, {Enter}
Send, {Enter}
Sleep, 100
Send, {{}{{}{c}{1}{:}{:} ; Sends {{c1::
Send, {Enter}
Send, {Enter}
Sleep, 100
Send, {:}{:}
SendInput, Diagnosis
Send, {}}{}} ; Sends
Sleep, 100
MouseMove, 1014, 1184
Click
Sleep, 100
SendInput, Quick-Diagnosis
Sleep, 100
Send, {Tab}
MouseMove, 42, 178
Click
}
return



^!+#t:: ; Clear Anki Fields
{
MouseMove, 256, 178
Click
Sleep, 50
Send, ^a
Sleep, 50
Send, {Delete}
Sleep, 50
Send, {Tab}
Sleep, 50
Send, ^a
Sleep, 50
Send, {Delete}
Sleep, 50
MouseMove, 1014, 1184
Click
Sleep, 50
Send, ^a
Sleep, 50
Send, {BackSpace}
Sleep, 50
MouseMove, 42, 178
Click
}
return

;;################################################################################
;; Power Left Hand Row 4
;;################################################################################

^!+#1:: ; NA Outlook
{
Send, !^+G
}
return 



^!+#2:: ; Archieve Outlook
{
Send, ^+1
}
return 



^!+#3:: ; WF Outlook
{
Send, !^+L
}
return 



^!+#4:: ; Boomerange Outlook
{
MouseMove, 2420, 256
Click
MouseMove, 2378, 428
Click
MouseMove, 826, 600
Click
}
return 


^!+#5:: ; Unsubscribe
{
Send, ^f
SendInput, unsubscribe
Send, {enter}
}
return



;;################################################################################
;; Power RIGHT Hand Row 2
;;################################################################################

^!+#h:: ; Bi-directional arrow
{
Send, {U+21C6}
}
return



^!+#j:: ; Obsedian -> Link
{
Send, {[}{[}{]}{]}{Left}{Left}
}
return



^!+#k:: ; Link to block
{
Send, {!}
Send, {[}{[}{]}{]}{Left}{Left}
}
return



^!+#l:: ; Obsedian -> ; Command Palette
{
Send, ^p
}
return



^!+#;:: ; Obsedian -> Bold
{ 
Send, {*}{*}{*}{*}{Left}{Left}
}
return



;;################################################################################
;; Power RIGHT Hand Row 3
;;################################################################################

^!+#u:: ; Obsedian -> H1
{
Send, {#}{space}
}
return

^!+#i:: ; Obsedian -> H2
{
Send, {#}{#}{space}
}
return

^!+#o:: ; Obsedian -> H3
{
Send, {#}{#}{#}{space}
}
return

^!+#p:: ; Obsedian -> H4
{
Send, {#}{#}{#}{#}{space}
}
return


^!+#y:: ; Obsedian -> H4
{
Send, {#}{#}{#}{#}{space}
}
return

^!+#n:: ; Obsedian -> H4
{
Send, {#}{#}{#}{#}{space}
}
return



; Anki 

^+i:: ; This pauses the Youtube Video, Copies a---nd then Does Image Occlusion
{
MouseMove, 2893, 456
Click
Sleep, 200
MouseMove, 31, 109
Click
MouseMove, -858, 454
Click
Sleep, 500
Send, #{Up}
Sleep, 200
Send, ^f
}
return

^!+i:: ; This creates a white box for image occlusion
{
MouseMove, 2526, 638
Click
Sleep, 500
MouseMove, 2436, 199
Click
Sleep, 500
MouseMove, 1983, 1327
Click
MouseMove, 1260, 620
}
return

^!+o:: ; This switches back to beige mask
{
MouseMove, 2429, 189
Click
Sleep, 500
MouseMove, 2377, 627
Click
Sleep, 500
MouseMove, 1911, 1326
Click
MouseMove, 1260, 620
}
return


^+k:: ; This masks one and reveals all and then unpauses the video5
{
Send, ^+{Enter}
Sleep, 100
Send, !{Tab}
}
return


^+j::  ; This pauses the Youtube Video, Copies the screenshot, pastes the screenshot, and then unpauses the video
{
Send, ^+!v
Sleep, 500
Send ^v
}
return


;Anki Video Controls

^+l:: ; This pauses the Youtube Video
{
MouseMove, 2490, 1335
Click
Sleep, 300
Send, {Space}
Sleep, 300
MouseMove, 2490, 1335
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return

^+x:: ; This adjusts the speed for the Youtube Videos
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, G
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return

^+e:: ; This a 20 sec jump back in a youtube Youtube Video
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, z
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return

^+d:: ; This a 10 sec back in a youtube Youtube Video
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, j
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return


^+!q:: ; This a 20 sec jump forward in a youtube Youtube Video
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, x
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return

^+p:: ; This a 10 sec jump forward in a youtube Youtube Video
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, l
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return




^+r:: ; This increase speed slowly
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, {]}
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return


^+s:: ; This increase speed quickly
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, {NumpadAdd}
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return


^+9:: ; This deccreases speed slowly
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, {[}
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return


^+h:: ; This decreases speed quickly
{
MouseMove, 2520, 196
Click
Sleep, 300
Send, {NumpadSub}
Sleep, 300
MouseMove, 2520, 196
Click
Sleep, 100
Send, !{Tab}
MouseMove, 2621, -75
}
return





/**
 * Advanced Window Snap
 * Snaps the Active Window to one of nine different window positions.
 *
 * @author Andrew Moore <andrew+github@awmoore.com>
 * @version 1.0
 */

/**
 * SnapActiveWindow resizes and moves (snaps) the active window to a given position.
 * @param {string} winPlaceVertical   The vertical placement of the active window.
 *                                    Expecting "bottom" or "middle", otherwise assumes
 *                                    "top" placement.
 * @param {string} winPlaceHorizontal The horizontal placement of the active window.
 *                                    Expecting "left" or "right", otherwise assumes
 *                                    window should span the "full" width of the monitor.
 * @param {string} winSizeHeight      The height of the active window in relation to
 *                                    the active monitor's height. Expecting "half" size,
 *                                    otherwise will resize window to a "third".
 */
SnapActiveWindow(winPlaceVertical, winPlaceHorizontal, winSizeHeight) {
    WinGet activeWin, ID, A
    activeMon := GetMonitorIndexFromWindow(activeWin)

    SysGet, MonitorWorkArea, MonitorWorkArea, %activeMon%

    if (winSizeHeight == "half") {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop)/2
    } else {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop)/3
    }

    if (winPlaceHorizontal == "left") {
        posX  := MonitorWorkAreaLeft
        width := (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2
    } else if (winPlaceHorizontal == "right") {
        posX  := MonitorWorkAreaLeft + (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2
        width := (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2
    } else {
        posX  := MonitorWorkAreaLeft
        width := MonitorWorkAreaRight - MonitorWorkAreaLeft
    }

    if (winPlaceVertical == "bottom") {
        posY := MonitorWorkAreaBottom - height
    } else if (winPlaceVertical == "middle") {
        posY := MonitorWorkAreaTop + height
    } else {
        posY := MonitorWorkAreaTop
    }

    WinMove,A,,%posX%,%posY%,%width%,%height%
}



;NAVIGATION

^F10::WinMinimize, A ; Minimizes Current Window to Tray

/**
 * GetMonitorIndexFromWindow retrieves the HWND (unique ID) of a given window.
 * @param {Uint} windowHandle
 * @author shinywong
 * @link http://www.autohotkey.com/board/topic/69464-how-to-determine-a-window-is-in-which-monitor/?p=440355
 */
GetMonitorIndexFromWindow(windowHandle) {
    ; Starts with 1.
    monitorIndex := 1

    VarSetCapacity(monitorInfo, 40)
    NumPut(40, monitorInfo)

    if (monitorHandle := DllCall("MonitorFromWindow", "uint", windowHandle, "uint", 0x2))
        && DllCall("GetMonitorInfo", "uint", monitorHandle, "uint", &monitorInfo) {
        monitorLeft   := NumGet(monitorInfo,  4, "Int")
        monitorTop    := NumGet(monitorInfo,  8, "Int")
        monitorRight  := NumGet(monitorInfo, 12, "Int")
        monitorBottom := NumGet(monitorInfo, 16, "Int")
        workLeft      := NumGet(monitorInfo, 20, "Int")
        workTop       := NumGet(monitorInfo, 24, "Int")
        workRight     := NumGet(monitorInfo, 28, "Int")
        workBottom    := NumGet(monitorInfo, 32, "Int")
        isPrimary     := NumGet(monitorInfo, 36, "Int") & 1

        SysGet, monitorCount, MonitorCount

        Loop, %monitorCount% {
            SysGet, tempMon, Monitor, %A_Index%

            ; Compare location to determine the monitor index.
            if ((monitorLeft = tempMonLeft) and (monitorTop = tempMonTop)
                and (monitorRight = tempMonRight) and (monitorBottom = tempMonBottom)) {
                monitorIndex := A_Index
                break
            }
        }
    }

    return %monitorIndex%
}

; Function to unmaximize the window if needed
UnmaximizeIfNecessary()
{
    ; Get title of active window
    WinGetActiveTitle, activeTitle

    ; Check if the window is maximized and unmaximize if needed
    WinGet, state, MinMax, %activeTitle%
    if (state = 1) 
    {
        WinRestore, %activeTitle%
    }
}

; Numberpad Hotkeys (Landscape)
#!Numpad7::
UnmaximizeIfNecessary()
SnapActiveWindow("top","left","half")
return

#!Numpad8::
UnmaximizeIfNecessary()
SnapActiveWindow("top","full","half")
return

#!Numpad9::
UnmaximizeIfNecessary()
SnapActiveWindow("top","right","half")
return

#!Numpad1::
UnmaximizeIfNecessary()
SnapActiveWindow("bottom","left","half")
return

#!Numpad2::
UnmaximizeIfNecessary()
SnapActiveWindow("bottom","full","half")
return

#!Numpad3::
UnmaximizeIfNecessary()
SnapActiveWindow("bottom","right","half")
return

; Numberpad Hotkeys (Portrait)
^#!Numpad8::
UnmaximizeIfNecessary()
SnapActiveWindow("top","full","third")
return

^#!Numpad5::
UnmaximizeIfNecessary()
SnapActiveWindow("middle","full","third")
return

^#!Numpad2::
UnmaximizeIfNecessary()
SnapActiveWindow("bottom","full","third")
return

; Additional Hotkeys
#!Up::
UnmaximizeIfNecessary()
SnapActiveWindow("top","full","half")
return

#!Down::
UnmaximizeIfNecessary()
SnapActiveWindow("bottom","full","half")
return

^#!Up::
UnmaximizeIfNecessary()
SnapActiveWindow("top","full","third")
return

^#!Down::
UnmaximizeIfNecessary()
SnapActiveWindow("bottom","full","third")
return



^!+e:: ;Open messages to top right corner
{
; Open WhatsApp
    Run, chrome.exe "https://web.whatsapp.com/" " --new-window "
    Sleep, 500
    Send, #{Up} 
    Sleep, 2000
    MouseMove, 2487, 11
    Click
    SnapActiveWindow("top","right","half")
        ; Open a new tab
    Send, ^t
    Sleep, 500

    ; Go to the address bar
    Send, ^l
    Sleep, 500

    ; Open Google Messages in the new tab
    Send, https://messages.google.com/web/conversations
    Send, {Enter}
}
return

^!+d:: ; This archieves text messages on a half screen
{
MouseMove, 313, 303
Click
Sleep, 100
MouseMove, 287, 325
Sleep, 100
Click
Sleep, 1000
MouseMove, 180, 306
Click
Sleep, 100
MouseMove, 519, 640
Sleep, 100
Click
}
return








!^+y:: ; Search what you've already copied
{
Send, ^c
Sleep, 100
Send, ^f
Sleep, 100
Send, ^v
Sleep, 100
Send, {Enter}
}
return

!^+z:: ; Copy, open new tab and search it
{
Send, ^c
Sleep, 100
Send, ^t
Sleep, 100
Send, ^v
Sleep, 100
Send, {Enter}
}
return


^F1:: ;  AHK Scrip -> Snagit -> Grab Text
{MouseMove, 2520, 196
Click
Send, {Space}
Sleep, 100
Send, ^{F8}
}
return


;Alt + Ctrl + Shft + M -> Snap-it -> Close Image-to-text
^+!m::
{MouseMove, 842, 610
Click
Sleep, 100
MouseMove, 988, 35
Click
Sleep, 100
MouseMove, 1894, 15
Click
}
return


^!+#WheelUp::   ; Scroll all the way to the top
{
Send, ^{Home}
}
return  


; Scroll all the way to the bottom
^!+#WheelDown::
{
Send, ^{End}
}
return  


^!+T:: ; Alt + Ctrl + Shft + T -> Youtube Search
{
Run, chrome.exe "https://www.youtube.com/" " --new-window "
Sleep, 500
MouseMove, 1462, 128
Click
}
return


^!+S:: ; ;Alt + Ctrl + Shft + S -> Open Oryx 
{
Run, chrome.exe "https://configure.zsa.io/my_layouts" " --new-window "
}
return



^!+r:: ;Alt + Ctrl + Shft + r - Open What's App
{
Run, chrome.exe "https://web.whatsapp.com/" " --new-window "
Sleep, 500
Send, #{Up} 
Sleep, 2000
MouseMove, 2487, 11
Click
SnapActiveWindow("top","right","half")
Sleep, 1000
MouseMove, 1530, 234
Click
Sleep, 1000
MouseMove, 2451, 666
Sleep, 1000
Click
}
return

^!+p:: ;Alt + Ctrl + Shft + p -> Archive What's app
{
MouseMove, 358, 256
Click
Sleep, 200
MouseMove, 425, 291
Sleep, 100
Click
}
return


^+!n::  ;Alt + Ctrl + Shft + O -> Reload AHK Script
{ 
Send, ^s
Sleep, 100
MouseMove, 2321, 1420
Click
Sleep, 100
MouseMove, 2239, 1260
Sleep, 100
MouseClick, right
}





!#a::  ;Alt + Win + A -> Left Delete Whole Line
{ 
Send, {Home}
Send, +{End}
Sleep, 100
Send, {Del}
}
return



!#j:: ; Insert date and time
{
Send, !#p
Send, {space}{-}{space}
}
return




!^F19:: ; Enter into Zotero
{
MouseMove, 2417, 60
Click
Sleep, 500
Send, M
Sleep, 300
Send, {Tab}
Send, unread
Sleep, 300
MouseMove, 2486, 415
}
return




^F20:: ; Obsedian -> Blank Space
{
Send, \
Send, {enter}
Send, {<}tab{>}
}
return




;Alt + Ctrl + Shft + K -> Obsidian -> Copy and Search in Google and Amboss 
!^+k::
{
Run, chrome.exe "https://next.amboss.com/us/" " --new-window "
Sleep, 500
Send, #{Up} 
Sleep, 2000
MouseMove, 1831, 129
Click 
}
return



!^+f:: ;Alt + Ctrl + Shft + F -> Obsidian -> Copy and Search in Google Image
{
Send, ^c
Sleep, 100
Run, chrome.exe "https://images.google.com/" " --new-window "
Sleep, 500
Send, #{Up}
Send, ^v
Send, {enter}
}
return


; Up arrow
^+F20:: 
{
Send, {U+2191}
}
return

; Down arrow
^+F19:: 
{
Send, {U+2193}
}
return

; Right arrow
^+F17:: 
{
Send, {U+2192}
}
return

; Leftarrow
^+F16:: 
{
Send, {U+2190}
}
return

; Change
^+F15:: 
{
Send, {U+0394}
}
return



; Type Phone Number
^+F14:: 
{
SendInput, 765-602-6054
}
return

; Type My First Name
^+F12:: 
{
SendInput, Nicholas August
}
return

; Type my Last Name
^+F13:: 
{
SendInput, Zehner
}
return



; Type my Stanford Email
^+F11:: 
{
SendInput, nazehner@stanford.com
}
return


; Type my Gmail Email
^+F21:: 
{
SendInput, nazehner@gmail.com
}
return










;**Alt + Ctrl + Shft + G -> Move to A1 for Outlook

!^+G::
{
Send, ^+v
Sleep, 100
Send, {@}
Sleep, 100
Send, {enter}
} 
return




;**Alt + Ctrl + Shft + L -> Move Outlook to ^WF

!^+L::
{
Send, ^+v
Sleep, 100
Send, {^}
Sleep, 100
Send, {enter}
} 
return


;Alt + Ctrl + Shft + J -> Move Outlook to ~Ref
!^+J::
{
Send, ^+v
Sleep, 100
Send, {~}
Sleep, 100
Send, {enter}
} 
return


;Alt + Ctrl + Shft + 9 -> Insert Template 1
;!^+9::
{
Send, {enter}
Sleep, 100
Send, !9
Sleep, 100
Send, {Down}
Send, {Down}
Send, {enter}
} 
return


;Alt + Ctrl + Shft + 8 -> Insert Template 2
;!^+8::
{
Send, {enter}
Sleep, 100
Send, !9
Sleep, 100
Send, {enter}

} 
return

;Alt + Ctrl + Shft + 6 -> Insert Template 2
;!^+6::
{
Send, {enter}
Sleep, 100
Send, !9
Sleep, 100
Send, {Down}
Send, {enter}

} 
return

^+F7:: ; Comment Out Highlighted Text
{
Send, ^m
Sleep, 100
Send, 0998
Send, {enter}
}
return

!#+4:: ; Anki Cloze List
{
Sleep, 100
Send, {{}{{}{c}{1}{:}{:} ; Sends {{c1::
Send, {Enter}
SendInput, 1.){space} 
Send, {Enter}
SendInput, 2.){space}  
Send, {Enter}
SendInput, 3.){space} 
Send, {Enter}
SendInput, 4.){space} 
Send, {Enter}
SendInput, 5.){space}  
Send, {Enter}
SendInput, 6.){space}  
Send, {Enter}
SendInput, 7.){space}  
Send, {Enter}
SendInput, 8.){space}  
Send, {Enter}
Sleep, 100
Send, {}}{}} ; Sends
Sleep, 100
}
Return



^!F2:: ; Anki Cloze Paste
{
Send, {{}{{}{c}{1}{:}{:} ; Sends {{c1::
Sleep, 100
Send, {Enter}
Send ^v
Sleep, 100
Send, {Enter}
Sleep, 100
Send, {}}{}} ; Sends
}
Return


^+F5:: ; Anki Card Tagged
{
Send,^+{F3}
Send,^d
Sleep, 100
SendInput, Tagged
Sleep, 100
Send, {Enter}
}
Return

^+F6:: ;  Anki Card General Knowledge
{
Send,^+{F3}
Send,^d
Sleep, 100
SendInput, General Knowledge
Sleep, 100
Send, {Enter}
}
return

!^+x:: ; Unformat Anki and remove hyperlinks
{
Send, ^a
Sleep, 100
Send, ^r
Sleep, 100
Send, !^+h
Sleep, 100
}
return



+F21:: ;   Paste Unformatted
{
Clipboard := Clipboard
Send ^v
}
return

^+F3::  ; Top Right 2/3 Screen for Anki and For Focus Mate Sessions

    ; Get title of active window
    WinGetActiveTitle, activeTitle

    ; Check if the window is maximized and unmaximize if needed
    WinGet, state, MinMax, %activeTitle%
    if (state = 1) 
    {
        WinRestore, %activeTitle%
    }

    ; Move the window to the next monitor (Win+Shift+Right)
    Send, #+{Right} 

    ; Get title of active window again (in case it changed)
    WinGetActiveTitle, activeTitle

    ; Resize the window
    WinMove, %activeTitle%,, 2560, 6, 1080, 1246

Return

^F19:: ;Obsidian -> Create New Internal page with highlighted text
{
Send, ^x
Send, {[}{[}
Send, ^v
Send, {]}{]}
}
return

