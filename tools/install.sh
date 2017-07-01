#
# Script for install oh-my-vim automatically.
#
# @author yanxuan.lc
# @version 1.0.0
# @since 1.0.0
#

OMV_HOME=~/.oh-my-vim

function main() {

    # Use colors, but only if connected to a terminal, and that terminal supports them.
    if which tput >/dev/null 2>&1; then
        ncolors=$(tput colors)
    fi
    if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
        RED="$(tput setaf 1)"
        GREEN="$(tput setaf 2)"
        YELLOW="$(tput setaf 3)"
        BLUE="$(tput setaf 4)"
        BOLD="$(tput bold)"
        NORMAL="$(tput sgr0)"
    else
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        BOLD=""
        NORMAL=""
    fi

    # Only enable exit-on-error after the non-critical colorization stuff,
    # which may fail on systems lacking tput or terminfo
    set -e

    if [ -d ${OMV_HOME} ]; then
        printf "${YELLOW}You already have Oh My VIM installed.${NORMAL}\n"
        printf "You'll need to remove Oh My VIM if you want to re-install.\n"
        exit
    fi

    # Prevent the cloned repository from having insecure permissions. Failing to do
    # so causes compinit() calls to fail with "command not found: compdef" errors
    # for users with insecure umasks (e.g., "002", allowing group writability). Note
    # that this will be ignored under Cygwin by default, as Windows ACLs take
    # precedence over umasks except for filesystems mounted with option "noacl".
    umask g-w,o-w

    # Ensure git has been already installed.
    hash git >/dev/null 2>&1 || {
        printf "${RED}Error: git is not installed.${NORMAL}\n"
        exit 1
    }

    # Install Vundle.Vim
    printf "${BLUE}Cloning Vundle.Vim...${NORMAL}\n"
    env git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || {
        printf "${RED}Error: git clone of VundleVim/Vundle.vim.git repo failed.${NORMAL}\n"
        exit 1
    }

    # Install oh-my-vim
    printf "${BLUE}Cloning Oh My VIM...${NORMAL}\n"
    env git clone --depth=1 https://github.com/yanxuan-lc/oh-my-vim.git ${OMV_HOME} || {
        printf "${RED}Error: git clone of yanxuan-lc/oh-my-vim.git repo failed.${NORMAL}\n"
        exit 1
    }

    # Backup previous .vimrc
    printf "${BLUE}Looking for an existing vim config...${NORMAL}\n"
    if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
        printf "${YELLOW}Found ~/.vimrc.${NORMAL} ${GREEN}Backing up to ~/.vimrc.pre-omv${NORMAL}\n";
        mv ~/.vimrc ~/.vimrc.pre-omv;
    fi

    # Create new .vimrc
    printf "${BLUE}Generating .vimrc config...${NORMAL}\n"
    touch ~/.vimrc
    echo "\"Import oh-my-vim configurations." >> ~/.vimrc
    echo "source ~/.oh-my-vim/oh-my-vim.vim"  >> ~/.vimrc

    # Finish
    printf "${GREEN}"
    echo ''
    echo '   ____  __       __  ___         _    ________  ___'
    echo '  / __ \/ /_     /  |/  /_  __   | |  / /  _/  |/  /'
    echo ' / / / / __ \   / /|_/ / / / /   | | / // // /|_/ / '
    echo '/ /_/ / / / /  / /  / / /_/ /    | |/ // // /  / /  '
    echo '\____/_/ /_/  /_/  /_/\__, /     |___/___/_/  /_/   '
    echo '                     /____/                         ....is now installed!'
    echo ''
    echo ''
    echo 'Please look over the ~/.oh-my-vim directory to select plugins, themes, and options.'
    echo ''
    printf "${NORMAL}"
}

main
