export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git kubectl)

source $ZSH/oh-my-zsh.sh

# Aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Hack to have 'pip' from brew available for the aws-cli
# https://github.com/aws/aws-cli/issues/6351#issuecomment-1256713137
export PATH=$PATH:/opt/homebrew/opt/python@3.13/libexec/bin

# JDK setup (for PySpark)
export JAVA_HOME=$HOMEBREW_PREFIX/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
export PATH="$HOMEBREW_PREFIX/opt/openjdk@17/bin:$PATH"

# Vim mode for zsh
bindkey -v
