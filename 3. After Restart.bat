REG IMPORT ".\bin\regs\Add_Open_in_Windows_Terminal_context_menu_for_all_users.reg"
REG IMPORT ".\bin\regs\Add_Open_in_Windows_Terminal_expandable_context_menu.reg"
REG IMPORT ".\bin\regs\Numlock_on_startup.reg"
REG IMPORT ".\bin\regs\enable-notifications.reg"

#cmd /c ""%USERPROFILE%\Desktop\Quick install package\bin\UnityDarkSkin.App\Unity Dark Skin.exe""

copy ".\bin\minecraft\Minecraft.lnk" %USERPROFILE%\Desktop
copy ".\bin\minecraft\Feed The Beast.lnk" %USERPROFILE%\Desktop
copy ".\bin\minecraft\Technic Launcher.lnk" %USERPROFILE%\Desktop

cmd /c ""C:\bin\ts3\tp.ts3_iconpack""
cmd /c ""C:\bin\ts3\sp.ts3_iconpack""
cmd /c ""C:\bin\ts3\ip.ts3_iconpack""

cmd /c "".\bin\installers\ML4.exe""
cmd /c "".\bin\installers\FiveM.exe""
cmd /c "".\bin\installers\BD.exe""

copy ".\bin\other\settings.json" "%USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
