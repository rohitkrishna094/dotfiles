set -gx LS_COLORS 'rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;47:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'
set fish_cursor_default line
set TERM xterm-256color
# cd ~
clear

alias e. "explorer.exe ."
alias gl "git log --oneline --all --graph --decorate  $argv"
alias vi "vim $argv"

alias c clear
alias e exit
# alias ll "ls -al --color"
alias ll "lsd -al --color"
alias ls "lsd"
alias l. "ls -d .* --color"
alias df "df -H"
alias du "du -ch"

# cd related alises
alias up "cd .."
alias cdm='cd /mnt/c/Users/rohit/'
alias cdc='cd /mnt/c'
alias cda='cd /mnt/c/Apache'
alias cdhd='cd /mnt/c/Users/rohit/Desktop'
alias cdhg='cd /mnt/c/Users/rohit/Desktop/github'
alias cdhdoc='cd /mnt/c/Users/rohit/Documents'
alias .. "cd .."
alias .1 "cd .."
alias .2 "cd ../.."
alias .3 "cd ../../.."
alias .4 "cd ../../../.."

# wsl aliases
alias cdd="cd ~/wslDesktop"
alias cdg="cd ~/wslDesktop/github"

# git aliases
alias ga='git add'
alias gaa='git add .'
alias gau='git add --update'
alias grv='git remote -v' 
alias gcl='git clone'

alias gb='git branch'
alias gbd='git branch --delete '
alias gba='git branch -a '

alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'

alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gce='git checkout -- .'

alias gd='git diff'
alias gda='git diff HEAD'

alias gi='git init'

alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'

alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'

alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'

alias gs='git status'
alias gss='git status --short'

alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

alias gg='git graph'
alias gcount='git rev-list --all --count'

alias j='java'
alias jc='javac'

# hugo aliases
alias hugo='hugo.exe'

# Docker image aliases
alias dbuild='docker build -t'
alias dimg='docker image'
alias dimgs='docker images'
alias dimgrm='docker image rm'

# Docker container aliases
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dcls='docker container ls'
alias dclsa='docker container ls -a'
alias dstop='docker stop'
alias drm='docker rm'

# Docker Run aliases
alias drun='docker run -dp'

# Docker volume aliases
alias dvls='docker volume ls'
alias dvc='docker volume create'

# Docker network aliases
alias dnls='docker network ls'
alias dnc='docker network create'

# Docker compose aliases
alias dcomp='docker-compose'
alias dcompd='docker-compose down'
alias dcompu='docker-compose up'
alias dcompud='docker-compose up -d'

# windows aliases
alias kp "cmd.exe /c C:/Users/rohit/Desktop/scripts/killport.bat"
