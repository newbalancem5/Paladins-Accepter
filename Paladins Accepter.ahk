#SingleInstance force
Menu, tray, add, Menu
Menu, tray, NoStandard
Menu, tray, add, PaladinsGuru
Menu, tray, add, Playpaladins
Menu, tray, add, Exit

SetMouseDelay, 100
mousex:=A_ScreenWidth*.5
mousey:=A_ScreenHeight*.6300

 Pause
Loop
   Click %mousex%, %mousey%  
  
F2::Pause
F9::Reload
F3::MouseGetPos, mousex, mousey ; 

Menu:
Gui, Destroy
gui, font, s10 w500


Gui, Add, Text, x60 y5,Press F2 for activaited Paladins Accepter

Gui, Add, Text, x5 y40, Every 2 seconds produce:
Gui, Add, Radio, x5 y60 altsubmit Checked%AcceptMethod2%, Mouse Click
gui, Add, checkbox, Checked%RunatStart% vRunatStart x5 y210, Run tool at startup



Gui, Show, w360 h160,Paladins accepter
return


PaladinsGuru:
Run http://paladins.guru/
return

Playpaladins:
Run http://playpaladins.online
return

Exit:
ExitApp