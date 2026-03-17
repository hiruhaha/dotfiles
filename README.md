# 💻 macOS Dotfiles & Setup

Giải pháp quản lý dotfiles gọn gàng bằng Git Bare Repo và Homebrew.

## 🚀 Cài đặt máy mới (Copy & Paste)

```bash
# Cài Xcode CLI (Git)
xcode-select --install

# Cài Homebrew
/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"

# Clone repo ẩn vào ~/.dotfiles
git clone --bare https://github.com/hiruhaha/dotfiles.git $HOME/.dotfiles

# Tạo alias tạm thời để thao tác
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Khôi phục file cấu hình ra thư mục Home
dotfiles checkout

# Ẩn các file rác không được theo dõi
dotfiles config --local status.showUntrackedFiles no

cd ~
brew bundle install

source ~/.zshrc
```