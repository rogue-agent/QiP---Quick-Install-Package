# QiP - Quick Install Package

### What is this for?
When you want to reinstall Windows but don't want to go through the hassle of downloading and installing every software and changing every setting.

### What do these Batch files do?
- `0.Libraries.bat` : starts DirectX web version installer and all available packaged VC Redistributables installers via `install_all.bat` by W1zzard @ TechPowerUp
- `1.Drivers.bat` : starts specified driver installers
- `2.Double click me.bat` : starts symlink.bat to create symbolic links with folders that might be of interest to save on another disk so you do not need to back it up later. starts powershell 7.2 installer and runs `pw.ps1` file with winget commands to install list of applications and to install packaged fonts. then starts installer files for specified programs and disables hibernation mode in windows.
- `3.After Restart.bat` : imports registries copies game shortcuts on to the desktop, starts ts3 package installers, starts mod installers and copies windows terminal settings
- `4. And last.bat` : copies powershell profile and ohmyposh theme file, starts game shortcuts to download latest versions and mod installer

Important notes for new users:
- you can open all files with notepad or other text editor by right clicking and clicking edit in the context menu
- you can run .bat files by double clicking on them and .ps1 by opening powershell, going into the folder with cd filepath and .\filename.ps1

### How to use?
If you have a running windows computer:
0. Download this package by clicking on the green button on top of this page and then Download zip, copy the files into a folder
1. Download directx web installer from https://www.microsoft.com/en-us/download/details.aspx?id=35 rename it dxwebsetup.exe and move it into `libs` folder
2. Download vc++ redists from https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/ move all files into `libs` folder, make sure there is file called `install_all.bat`
3. Download chipset drivers andor graphics drivers, move them into drivs folder and name (them) `acs.exe` and `ard.exe`, you can download chipset drivers from your motherboard manufacturers website and graphics drivers from your graphics cards vendors website.
If you are on the pc that is going to be clean installed and it has 1 ore more other disks than the `c:\` disk then you can copy your important files from any folder to a good structure onto another disk, like me: `c:\documents` and `d:\documents` are the same for me, so i copied all the files from `c:\` that i wanted to the other disk.
-4. Open `symlink.bat` inside the bin folder; here remove all except the first line. `mklink /d` will make a symbolic link between the first folder and the folder where the content is. use `%userprofile%` instead of `c:\users\username\` for example: `mklink /d %USERPROFILE%\Documents\Aeon H:\Documents\Aeon` will link my aeon folder from `h:\documents` to `c:\users\username\documents`, so if i reinstall windows the files will still be in `h:\`
4. If you don't want to do symbolic links delete `symlink.bat` in bin folder.
5. Download latest version of powershell https://github.com/PowerShell/PowerShell/releases/download/v7.2.0/PowerShell-7.2.0-win-x64.msi rename it to `pwsh7.msi` and move it to `installers` folder
6. Open `pw.ps1` inside the bin folder. you can remove and add the programs that you want on the computer to be installed. i recommend not removing the last two lines because they install the fonts that you want. just remove the line of the program that you don't want. you can open powershell on the computer you use and do winget search and then the program that you want to install to see if it is available in winget, like this: `winget search firefox` and then adding `winget install id` that is provided in the list, if not you can download it and move it into the `installers` folder.
7. If you want to install extra fonts you can head over to https://fonts.google.com/ or https://www.dafont.com/ download any font or have your own files, move the `.ttf` files to the `fonts` folder
8. Open `2.Double click me.bat` and change the `aff.exe` or `ban.exe` and others to the other installers that you added into the `installers` folder
9. If you do not install windows terminal you can remove the `.reg` files for windows terminal in the `regs` folder (thank Shawn Brink from Ten forums for these)
10. If you install basic windows you can remove `notifications.reg` and `numlock.reg` these enable notifications and numlock if you don't have those enabled by default
11. If you have game shortcuts you want to copy to the desktop you can move them into `minecraft` folder and then open `3.After Restart.bat` to change the `Minecraft.lnk` and others to the game shortcut names
12. If you don't have windows terminal then you can delete `settings.json` in the `other` folder
13. If you want to automatically open the pages for extensions you can open `4.And last.bat`, remove the `#` on the first two lines and remove the chrome link with the link to the extension or page you want to open.
14. If you don't install powershell you can remove the powershell profile from `other` folder
15. Exit the folder and copy it onto a USB disk or other disk so you can run it after you installed windows
16. After fresh installment of windows open the folder and run `0.Libraries.bat` after it is done then run `1.Drivers.bat` and restart the computer.
17. Run `2.Double click me.bat` and then restart the computer
18. Run `3.After Restart.bat` and then restart the computer
19. Run `4.And last.bat` and you are done. IF you want you can restart one more time and then you are done
20. You can apply the 4k wallpaper that was included in the other folder by right clicking it and setting is a wallpaper on the desktop.
21. Enjoy

### How to configure, for advanced users:
1. in batch `cmd /c "".\folder path\filename.ext""` will start any program
2. `%USERPROFILE%` replaces `c:\users\username` folder
3. `%APPDATA%` replaces `c:\users\username\appdata\roaming` folder
4. `%LOCALAPPDATA%` replaces `c:\users\username\appdata\local` folder
5. in batch `pwsh -File ".\folder path\filename.ext"` will run a powershell file in powershell
6. in batch `powercfg.exe /hibernate off` will disable hibernation or "fast boot" in windows so shutting down the pc and restarting has the same effect. you can read more here https://docs.microsoft.com/en-us/troubleshoot/windows-client/deployment/disable-and-re-enable-hibernation
7. in batch `#` will make a line in batch into a comment, so if you don't want to remove a line you can make it a comment so it won't do anything
8. in batch `REG IMPORT ".\file path\filename.reg"` will import a registry file
9. in batch `copy ".\filepath\filename.ext" "c:\other file path\folder"` will copy a file to the specified path
10. in batch `rundll32 url.dll,FileProtocolHandler https://websiteaddress.org` opens a web page in the default web browser, you can change `url.dll` with another file type like `bat.dll` and theoretically open a bat file with the file protocol handler and a launch option
11. in batch `xcopy /s/z/i ".\file path\folder" "c:\other file path\folder"` to copy all files from the folder to another folder
12. in powershell `winget install dev.program` will install a program from the winget distribution list, to search the list `winget search programname`
13. `$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
dir fonts/*.ttf | %{ $fonts.CopyHere($_.fullname) }` will install all fonts in the fonts folder, you can change `fonts/` to another folder name if you want
14. in batch `mklink /d "c:\file path\folder" "d:\other file path\folder"` will make a symbolic link from the second folder to the first, so if you have a file in `d:\folder` that is then linked to `c:\folder` so you can delete `c:\folder` without worries because the files are in `d:\folder`
15. you can create a `.reg` file by opening a text editor and writing: 
`Windows Registry Editor Version 5.00
[example\path\folder]
"registryname"=dword:value`
16. if you want to have a cool terminal you can check this video, Scott Hanselman made a pretty nice one that I use:  https://www.youtube.com/watch?v=VT2L1SXFq9U&t=1047s
17. do whatever and have fun learning a little bit of powershell and batch

### Todo:
Instead of including installers automatically download installers from the web
Prompt the user to choose which programs to install from a list
Simplify setup
