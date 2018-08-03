installing 'fonts'

item_start 'Powerline'
POWERLINE_FONT=/Library/Fonts/Source\ Code\ Pro\ Medium\ for\ Powerline.otf
if [ ! -f "$POWERLINE_FONT" ]; then
   curl -o "$POWERLINE_FONT" https://raw.githubusercontent.com/powerline/fonts/master/SourceCodePro/Source%20Code%20Pro%20Medium%20for%20Powerline.otf
else
  item_complete 'already exists'
fi

item_start 'Nerd Font'
POWERLINE_FONT=/Library/Fonts/Source\ Code\ Pro\ Medium\ Nerd\ Font\ Complete.otf
if [ ! -f "$POWERLINE_FONT" ]; then
    curl -o "$POWERLINE_FONT" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/SourceCodePro/Medium/complete/Sauce%20Code%20Pro%20Medium%20Nerd%20Font%20Complete.ttDTree

else
  item_complete 'already exists'
fi
