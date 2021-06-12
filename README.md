# dots

### overview

All the applications I use to make these dotfiles work they way they should.

* distro ~ arch
* wm ~ sway
* terminal ~ alacritty
* shell ~ zsh
* text editor ~ neovim
* file manager ~ none
* bar ~ waybar
* application launcher ~ rofi
* fetch ~ my fetch script

### installation

On a fresh Arch install, just clone this repo into your user's normal home directory, then install all the packages I mentioned above in the overview with the [trizen AUR-Helper(it manages both pacman and the AUR)](https://github.com/trizen/trizen). After that, use [GNU/Stow](https://www.gnu.org/software/stow/) to symlink the configs from the git repo into ".config/" in your home directory. (For example, I could do "stow waybar" if I wanted the waybar config to be symlinked, and so on.) Then just reboot and log in to your fresh system.

### screenshot
![smol screen](https://raw.githubusercontent.com/petrolblue/dots/master/screen.png)
