# TODO:
# - Map function keys: https://github.com/jergusg/k380-function-keys-conf

dotfiledir="$(cd "$(dirname "$0")" && pwd)"
files=(
    .aliases
    .gitconfig
    .gitignore
    .vimrc
    .zshrc
)

for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/${file}" "${HOME}/${file}"
done
