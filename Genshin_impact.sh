#!/bin/bash env
cd $GAMEDIR/drive_c/Program\ Files/Genshin\ Impact/Genshin\ Impact\ game/
bash $CACHE/gilinux/132/patch.sh
bash $CACHE/gilinux/132/patch_anti_logincrash.sh
echo "PRESS KEY TO FINISH"
read key
env __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia DXVK_HUD=1 WINEARCH=win64 WINEPREFIX=$GAMEDIR $HOME/.local/share/lutris/runners/wine/lutris-6.0-x86_64/bin/wine cmd /c launcher.bat
