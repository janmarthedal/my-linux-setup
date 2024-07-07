THEME_BACKGROUND=ubuntu1.jpg
BACKGROUND_ORG_PATH="$HOME/.local/share/my-linux-setup/backgrounds/$THEME_BACKGROUND"
BACKGROUND_DEST_DIR="$HOME/.local/share/backgrounds"
BACKGROUND_DEST_PATH="$BACKGROUND_DEST_DIR/$THEME_BACKGROUND"

if [ ! -d "$BACKGROUND_DEST_DIR" ]; then mkdir -p "$BACKGROUND_DEST_DIR"; fi
[ ! -f $BACKGROUND_DEST_PATH ] && cp $BACKGROUND_ORG_PATH $BACKGROUND_DEST_PATH

gsettings set org.gnome.desktop.background picture-uri $BACKGROUND_DEST_PATH
gsettings set org.gnome.desktop.background picture-uri-dark $BACKGROUND_DEST_PATH
gsettings set org.gnome.desktop.background picture-options 'zoom'

unset THEME_BACKGROUND BACKGROUND_ORG_PATH BACKGROUND_DEST_DIR BACKGROUND_DEST_PATH
