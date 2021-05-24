if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  export GDK_DPI_SCALE=1
  export MOZ_ENABLE_WAYLAND=1
  export SDL_VIDEODRIVER=wayland
  export PATH=$HOME/tools/nvim-linux64/bin:$PATH
  exec sway
fi

