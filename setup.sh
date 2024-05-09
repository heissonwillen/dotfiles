# TODO:
# - Map function keys: https://github.com/jergusg/k380-function-keys-conf
# - Shortcut to change from light to dark theme
# - Install Chrome

function create_symlinks() {
    dotfiledir="${HOME}/dotfiles"
    files=(
        .config/i3
        .config/i3status
        .screenlayout
        Projects/Personal/.gitconfig
        .aliases
        .gitconfig
        .vimrc
        .Xmodmap
        .zshrc
    )

    echo "Changing to the ${dotfiledir} directory"
    cd "${dotfiledir}" || exit

    for file in "${files[@]}"; do
        echo "Creating symlink to $file in home directory."
        rm -rf "${HOME}/${file}"
        ln -sf "${dotfiledir}/${file}" "${HOME}/${file}"
    done
}

function install_packages() {
    echo "Updating APT and installing software packages."
    sudo apt update
    sudo apt install -y xinput i3 pip arandr zsh curl wget

    echo "Installing non-APT packages"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp    
    sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
}

function setup_misc() {
    echo "Setting up keyboard layout."
    setxkbmap -layout us -variant intl

    echo "Adding user to video group. This allows sudoless 'brightnessctl' usage."
    usermod -aG video ${USER}

    echo "Remap keys"
    xmodmap ~/.Xmodmap
}

install_packages
setup_misc
create_symlinks
