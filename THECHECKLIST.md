# The CHECKLIST for the ultimate user-friendly Linux experience

## How to read the symbols?

`✓` means it is already implemented
`!` means there is a workaround

## Without further ado, here is the checklist:

### WINE problems
- Anticheat (Destiny 2, Valorant, Genshin Impact (!, has Lutris installer script) for example)
- MS Office
- Adobe Apps
- UWP apps such as Minecraft Bedrock (!, `mcpelauncher` but requires you to purchase in Google Play not Microsoft Store)
- Visual Studio IDE
- Basically that is it. Once games are already running well (thanks to Proton), the project could focus more on areas like UWP apps and other applications

### Non-wine problems

- UE5 Binaries ✓ 
- Opera GX on Steam Deck
- A nice Android emulator for gaming (like Bluestacks), easy to configure
- Pacman update warning, do not `pacman -Syu` when laptop is not plugged in/below 50% power to reduce "problems" that will happen (could be implemented in Pamac)
- Discord update in Pacman (!, edit `/opt/discord/resources/build_info.json`)
- WSL except it's Windows on Linux, with GUI 
