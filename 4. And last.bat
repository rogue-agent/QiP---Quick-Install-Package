#rundll32 url.dll,FileProtocolHandler https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?utm_source=chrome-ntp-icon
#rundll32 url.dll,FileProtocolHandler https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp?utm_source=chrome-ntp-icon

xcopy /s/z/i ".\bin\VRC\Mods" "C:\Program Files (x86)\Steam\steamapps\common\VRChat\Mods\"
xcopy /s/z/i ".\bin\VRC\Plugins" "C:\Program Files (x86)\Steam\steamapps\common\VRChat\Plugins\"
xcopy /s/z/i ".\bin\VRC\UserData" "C:\Program Files (x86)\Steam\steamapps\common\VRChat\UserData\"

xcopy /s/z/i ".\bin\minecraft\.minecraft" "%USERPROFILE%\AppData\Roaming\.minecraft\"
xcopy /s/z/i ".\bin\minecraft\.feedthebeast" "%USERPROFILE%\AppData\Roaming\.feedthebeast\"
xcopy /s/z/i ".\bin\minecraft\.technic" "%USERPROFILE%\AppData\Roaming\.technic\"

xcopy /s/z/i ".\bin\bd\plugins" "%USERPROFILE%\AppData\Roaming\betterdiscord\plugins\"
xcopy /s/z/i ".\bin\bd\themes" "%USERPROFILE%\AppData\Roaming\betterdiscord\themes\"

xcopy /s/z/i ".\bin\other\Microsoft.PowerShell_profile.ps1" "%USERPROFILE%\Documents\PowerShell"
xcopy /s/z/i ".\bin\other\ohmyposhv3-v2.json" "%LOCALAPPDATA%\Programs\oh-my-posh\themes"