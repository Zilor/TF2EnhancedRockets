# TF2EnhancedRockets
Adds in [Elbagast's custom rocket models](http://elbagast.deviantart.com/art/TF2-Rocket-Models-269142041), along with some new custom rockets.

##### Requirements:
[TF2Items](https://builds.limetech.io/?p=tf2items) - Required for the `sm_er2rockets` command
[TF2Attributes](https://github.com/FlaminSarge/tf2attributes) - Required for Australium rockets to work, but not ultimately *required* as the plugin should detect the lack of TF2Attributes and use the normal non-Australium version of the rockets.

##### Commands:
- `sm_er2rockets` - Opens the rocket testing menu. The menu is to give yourself any Rocket Launcher with a modified incredibly slow projectile speed that allows you check and make sure the plugin is working and models are being changed.
- `sm_er2settings` - Opens the convar menu allowing you to change convar values on the fly after setting them in your server's `server.cfg` file.

##### ConVars:
- `sm_er2_version` - Standard version convar. *Do not touch!*
- `sm_er2_enable` - Enable Enhanced Rockets plugin? *[0/1] (Default: 1)*
- `sm_er2_festives` - Enable Festive stock/Black Box rockets? [0/1] *(Default: 0)*
- `sm_er2_australiums` - Enable Australium stock/Black Box rockets? *[0/1] (Default: 0)*
- `sm_er2_botkillers` - Enable Botkiller rockets? *[0/1] (Default: 0)*
- `sm_er2_tcdirecthit` - Enable team-colored Direct Hit rocket skins? *[0/1] (Default: 0)*
- `sm_er2_tcrocketjumper` - Enable BLU cream spirit team-colored Rocket Jumper rocket skin? *[0/1] (Default: 0)*

##### Installation Instructions:
- Download the plugin and the 7z files of the models & materials
- Extract the plugin to your server.
- Extract the server files to your server, fastdl files to your fastdl of choice
- rcon sm plugins load TF2EnhancedRockets.smx
- ???
- Profit!

##### Known Bugs:
- None! Huzzah!
If you find any, please file an issue report and provide whatever information you can on how the issue arose.

##### Version History:
**1.0**
- Initial release

**1.1**
- Removed useless IsValidClient check I left in there by accident. ***Fuck.***

**2.0**
- Added Botkiller rockets, Australium rockets, Festive rockets, Beggar's Bazooka rocket, enhanced Stock rocket
- Added new convars to enable/disable certain "extra" rockets
- Added two new menu commands, one for toggling convars and the other for giving yourself snails-pace-projectile-speed rocket launchers to test the rockets.

##### Credits:
- [ELbagast](http://steamcommunity.com/profiles/76561197970342156) - The guy that made the rocket models.
- [N-Cognito](http://steamcommunity.com/profiles/76561198028539550/) - Separated the rocket models from an old viewmodel mod Elbagast released, and converted them into proper models for me. Also created all the new rocket models to complete the set.

##### Preview Image:
*Click to view the full-sized 5,000x5,000 image*
![https://i.imgur.com/7kXI0wFm.jpg](https://i.imgur.com/7kXI0wF.jpg)
