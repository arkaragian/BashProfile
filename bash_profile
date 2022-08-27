# Command Aliases
alias vim="nvim"
alias vi="nvim"
alias ls='ls --color=auto'
# This requires the executable to be on our path.
alias make="gnumake"
#alias make="$HOME/bin/mingw64/bin/mingw32-make.exe"

alias remote="ssh Administrator@${REMOTEHOST}"
alias showpath='echo -e ${PATH//:/\\n}'

export HOME=/c/users/aris

#Maybe find the user name to set the variables bellow.
#See that OS We are in. Use cygpath to convert if needed.
export DESKTOP="$HOME/Desktop"
export REPOS="$HOME/source/repos"

#Neovim config folder
export NVCONF="$HOME/Appdata/Local/nvim"

#C and C++ compilers. Used by various programs.
export CC="$HOME/bin/mingw/mingw64/bin/gcc"
export CXX="$HOME/bin/mingw/mingw64/bin/g++"

export SHELL="/c/Program\ Files/Git/bin/bash.exe"
export TEST_SHELL="/usr/bin/bash.exe"

# This variable defines the default cmake generator
export CMAKE_GENERATOR="MinGW Makefiles"
export REMOTEHOST='192.168.0.90'


#ls colors configuration see https://linuxhint.com/ls_colors_bash/

#Default Definitions
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';

LS_RED='31'
LS_GREEN='32'
LS_ORANGE='33'
LS_BLUE='34'
LS_PURPLE='35'
LS_CYAN='36'
LS_GREY='90'

LS_DARKGRAY='91'
LS_LIGHTRED='92'
LS_LIGHTGREEN='93'
LS_YELLOW='94'
LS_LIGHTBLUE='95'
LS_TURQUOISE='96'
LS_WHITE='97'

#Set yellow to pdf extension
LS_COLORS="$LS_COLORS:*.pdf=0;93"

#Set Video Files color to orange
LS_COLORS="$LS_COLORS:*.avi=0;$LS_ORANGE:*.mp4=0;$LS_ORANGE"

#Set MSi to green as those are executables too
LS_COLORS="$LS_COLORS:*.msi=0;$LS_GREEN"
export LS_COLORS
