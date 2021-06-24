#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if !FileExist("C:\Users\Humano4815\AppData\Roaming\AWEF")
{
	FileCreateDir, C:\Users\Humano4815\AppData\Roaming\AWEF	
}

if FileExist("C:\Users\Humano4815\AppData\Roaming\AWEF\uno.txt")
{
FileReadLine, unom, C:\Users\Humano4815\AppData\Roaming\AWEF\uno.txt,1
}

if FileExist("C:\Users\Humano4815\AppData\Roaming\AWEF")
{
	if !FileExist("C:\Users\Humano4815\AppData\Roaming\AWEF\uno.txt")
	{
	FileAppend,,C:\Users\Humano4815\AppData\Roaming\AWEF\uno.txt
	}
}




Gui, Color, EEAA99
Gui, Add, Button, w20,1
Gui, Show, xCenter yCenter w100 h100, Hola1
return

Button1:
FileSelectFile, uno, 3, D:/, Escoge, Audio(*.mp3)
MsgBox %uno%

fileuno:=FileOpen("C:\Users\Humano4815\AppData\Roaming\AWEF\uno.txt","w")
fileuno.Write(uno)
fileuno.Close()

fileunor:=FileOpen("C:\Users\Humano4815\AppData\Roaming\AWEF\uno.txt","r")

unom:=fileunor.ReadLine()
MsgBox %unom%
return

!1::
SoundPlay %unom%, 1
return

!s::
SoundPlay stop.avi

!a::
Gui, Restore
return
