CoordMode Pixel Screen
CoordMode Mouse Screen
SetTitleMatchMode 2
SetTimer, AutoRestartTimer, 300000
SetTimer, AutoRestartTimer, Off

*F11::
AfkToggle := !AfkToggle
If (AfkToggle)
{
ControlClick,, Minecraft,, right,, D
}
else
{
ControlClick,, Minecraft,, right,, U
}


*F12::
AutoRestart := !AutoRestart
if(AutoRestart)
{
SetTimer, AutoRestartTimer, On
}
else
{
SetTimer, AutoRestartTimer, Off
}

AutoRestartTimer:
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, back.png
if(ErrorLevel = 0)
{
ControlClick,, Minecraft,, right,, U
SetTimer, AutoRestartTimer, Off
MouseClick, left, FoundX+200, FoundY+20
Sleep 300000
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, realm.png
While(ErrorLevel > 0)
{
Sleep 60000
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, realm.png
}
MouseClick, Left, FoundX+291, FoundY+32, 2
Sleep 60000
ControlClick,, Minecraft,, right,, D
AfkToggle = 1
SetTimer, AutoRestartTimer, On
}