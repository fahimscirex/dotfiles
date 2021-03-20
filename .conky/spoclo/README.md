[Conky] Spoclo
===========
![Spoclo preview](http://i.imgur.com/pDZHVAL.png "Spoclo_top Preview (/spotify-bottom/spoclo_rightedge.conky)")

Spoclo is Conky theme. It shows current date&time and currently playing song on spotify if running.
Based on:
 - [Conky Metro Clock by satya164 (deviantart)](http://www.deviantart.com/art/Conky-Metro-Clock-245432929)
 - [Conky-Spotify by Madh93 (github)](https://github.com/Madh93/conky-spotify)

Spoclo comes in different variants for different places on screen (**check Imgur gallery**):
  - **/spotify-top/spoclo_center.conky** - Spotify indicator above time - Center of screen
  - **/spotify-top/spoclo_rightedge.conky** - Spotify indicator above time - Right edge of screen
  - **/spotify-top/spoclo_leftedge.conky** - Spotify indicator above time - Left edge of screen
  - **/spotify-bottom/spoclo_center.conky** - Spotify indicator below time - Center of screen
  - **/spotify-bottom/spoclo_rightedge.conky (recomended)** - Spotify indicator below time - Right edge of screen
  - **/spotify-bottom/spoclo_leftedge.conky** - Spotify indicator below time - Left edge of screen

[Spoclo Imgur Gallery with previews](http://imgur.com/a/hnTYC "Spoclo imgur gallery previews")
> **Note:**
Check Customise section for more information and chaning position.

-------------------------
Install guide
----------------------
####Download

	wget -O spoclo https://github.com/Dacha204/conky-spoclo/archive/master.zip

####Unzip and copy/move to .conky dir
    
    unzip spoclo
    mv conky-spoclo-master ~/.conky/spoclo

####Install used fonts from spoclo/fonts
    
    cd ~/.conky/spoclo/fonts
    ./install.sh
    
####Run conky with custom config
    
    conky -c ~/.conky/spoclo/spotify-<variant>/spoclo_<variant>
    
> **Note:**
>Alternative: Copy content of desired spoclo variant into **~/.conkyrc** file and run conky without any parameter.
> example: cat ~/.conky/spoclo/spotify-bottom/spoclo_rightedge.conky > ~/.conkyrc && conky
>
>AutoStartup: If you have issue running conky on startup with **-c ~/.conky/spoclo/spotify-\<variant\>/spoclo_\<variant\>.conky** parameter try running it with
**conky -c /home/\<yourusername\>/.conky/spoclo/spoclo_\<variant\>.conky**

-------------------------
Customise
-------------------------
####Changing position
* Open desired spoclo.conky file with text editor and change **alignment** with own value:
__aligment = 'A_B'__, where A={top,middle,center} and B={left,middle,right}
* Change **gap_x** and **gap_y** to fine tweak position on the screen

-------------------------

Known issues and bugs
----------------------------
- Current song title overlaps with date when title is too long on spotify-top variants.

2016
