#cmd /c ""%USERPROFILE%\Desktop\Quick install package\bin\UnityDarkSkin.App\Unity Dark Skin.exe""

copy ".\bin\minecraft\Minecraft.lnk" %USERPROFILE%\Desktop
copy ".\bin\minecraft\Feed The Beast.lnk" %USERPROFILE%\Desktop
copy ".\bin\minecraft\Technic Launcher.lnk" %USERPROFILE%\Desktop

cmd /c ""C:\bin\ts3\tp.ts3_iconpack""
cmd /c ""C:\bin\ts3\sp.ts3_iconpack""
cmd /c ""C:\bin\ts3\ip.ts3_iconpack""

cmd /c ""%USERPROFILE%\Desktop\Minecraft.lnk""
cmd /c ""%USERPROFILE%\Desktop\Technic Launcher.lnk""
cmd /c ""%USERPROFILE%\Desktop\Feed The Beast.lnk""

cmd /c "".\bin\installers\ML4.exe""
cmd /c "".\bin\installers\FiveM.exe""
cmd /c "".\bin\installers\BD.exe""
cmd /c "".\bin\ModA.exe""

pwsh -File ".\bin\pw.ps1"

copy ".\bin\other\settings.json" "%USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"