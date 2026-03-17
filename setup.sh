# TODO:
# - Map function keys: https://github.com/jergusg/k380-function-keys-conf

function create_symlinks() {
    dotfiledir="${HOME}/dotfiles"
    files=(
        .aliases
        .gitconfig
        .gitignore
        .vimrc
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

create_symlinks

