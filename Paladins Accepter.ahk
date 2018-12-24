#SingleInstance force
Menu, tray, add, Menu
Menu, tray, NoStandard
Menu, tray, add, PaladinsGuru
Menu, tray, add, Playpaladins
Menu, tray, add, Exit

SetMouseDelay, 2
mousex:=A_ScreenWidth*.5
mousey:=A_ScreenHeight*.6300

 Pause
Loop
   Click %mousex%, %mousey%  
  
F2::Pause
F9::Reload
F3::MouseGetPos, mousex, mousey 

return

Menu:
Gui, Destroy
gui, font, s10 w500


Gui, Add, Text, x60 y5,Press F2 for activaited Paladins Accepter

Gui, Add, Text, x5 y40, Every 2 seconds produce:
Gui, Add, Radio, x5 y60 altsubmit Checked%AcceptMethod2%, Mouse Click
gui, Add, checkbox, Checked%RunatStart% vRunatStart x5 y210, Run tool at startup
gui, Add, Edit,x5 y97 w170 vNickNAme 
gui, Add, Text, x180 y102, Enter Nick Name
Gui, Add, Button, x5 y125 gSearch, Search


Gui, Show, w360 h160,Paladins accepter
return

Search:
GuiControlGet, NickNAme
Run,  http://paladins.guru/profile/pc/%NickNAme%, 
return

run http://paladins.guru/%nick%
return


PaladinsGuru:
Run http://paladins.guru/%nick%
return

Playpaladins:
Run http://playpaladins.online
return

Exit:
ExitApp