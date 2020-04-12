# TF2EnhancedRockets - Fork
Adds in [Elbagast's custom rocket models](http://elbagast.deviantart.com/art/TF2-Rocket-Models-269142041), along with some new custom rockets.

This fork tries to minimize the overhead and removes some addtional weapons.

#### Requirements:
- None

#### Commands:
- None
#### ConVars:
- `sm_er2_tcdirecthit` - Enable team-colored Direct Hit rocket skins? *[0/1] (Default: 0)*
- `sm_er2_tcrocketjumper` - Enable BLU cream spirit team-colored Rocket Jumper rocket skin? *[0/1] (Default: 0)*

#### Installation Instructions:
- Download the plugin and the 7z files of the models & materials
- Extract the plugin to your server.
- Extract the server files to your server, fastdl files to your fastdl of choice
- rcon sm plugins load TF2EnhancedRockets.smx
- ???
- Profit!

#### Known Bugs:
- None! Huzzah!

If you find any, please file an issue report and provide whatever information you can on how the issue arose.

#### Version History:
**1.0**
- Initial release

**1.1**
- Removed useless IsValidClient check I left in there by accident. ***Fuck.***

**2.0**
- Added Botkiller rockets, Australium rockets, Festive rockets, Beggar's Bazooka rocket, enhanced Stock rocket
- Added new convars to enable/disable certain "extra" rockets
- Added two new menu commands, one for toggling convars and the other for giving yourself snails-pace-projectile-speed rocket launchers to test the rockets.

**2.0-GMD**
- Removed Botkiller, Australium, Festive & enhanced stock rockets
- Removed cvars for the aforementioned rockets & enable plugin cvar
- Removed the menu/chat commands
- Removed the extra dependcy
- Added check to prevent the model change when the models are not precached, downloaded
- Improved/Changed Code syntax to gatekeeper condition

#### Credits:
- [Elbagast](http://steamcommunity.com/profiles/76561197970342156) - The guy that made the rocket models.
- [N-Cognito](http://steamcommunity.com/profiles/76561198028539550/) - Separated the rocket models from an old viewmodel mod Elbagast released, and converted them into proper models for me. Also created all the new rocket models to complete the set.

#### Preview Image:
*Click to view the full-sized 5,000x5,000 image*
![https://i.imgur.com/7kXI0wFm.jpg](https://i.imgur.com/7kXI0wF.jpg)
