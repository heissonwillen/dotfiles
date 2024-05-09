# dotfiles
My personal dotfiles.

## Usage
```
git clone https://github.com/heissonwillen/dotfiles.git ~/dotfiles && cd ~/dotfiles && ./setup.sh
```

## Manual steps
- Setup Xbox controller
```bash
sudo vim /etc/modprobe.d/blacklist.conf
sudo modprobe xpad
blacklist xpad
```
