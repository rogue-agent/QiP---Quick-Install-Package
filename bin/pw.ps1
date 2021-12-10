winget install Microsoft.WindowsTerminal
winget install JanDeDobbeleer.OhMyPosh
winget install Canonical.Ubuntu
winget install Github.cli

winget install audacity.audacity
winget install Discord.Discord
winget install EpicGames.EpicGamesLauncher
winget install Mozilla.Firefox.Nightly
winget install TimKosse.FileZilla.Client
winget install Axosoft.GitKraken
winget install GOG.Galaxy
winget install Intel.IntelDriverAndSupportAssistant
winget install Mega.MEGASync
winget install OBSProject.OBSStudio
winget install Plex.Plex
winget install ONLYOFFICE.DesktopEditors
winget install ElectronicArts.EADesktop
winget install Valve.Steam
winget install TeamSpeakSystems.TeamSpeakClient
winget install Microsoft.Teams.Exploration
winget install VideoLAN.VLC
winget install OpenVPNTechnologies.OpenVPN
winget install UnityTechnologies.UnityHub
winget install Ubisoft.Connect
winget install Microsoft.VisualStudioCode.Insiders
winget install OBSProject.obs-amd-encoder
winget install RARLab.WinRAR

$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
dir fonts/*.ttf | %{ $fonts.CopyHere($_.fullname) }