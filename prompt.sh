source ~/.git-prompt/colors.sh

if [ -f ~/.git-prompt/settings ]; then
    source ~/.git-prompt/settings
else
    source ~/.git-prompt/settings.default
fi

source ~/.git-prompt/git-prompt.sh

prePS1='\[\033]0;$TITLEPREFIX => ${PWD//[^[:ascii:]]/?}\007\]' # set window title
prePS1+='\n'                 # new line

if [[ $INCLUDE_USER_AND_HOST != 0 ]]; then
    prePS1+="$USER_AND_HOST_COLOR"              # change user and host color
    prePS1+='\u@\h'             # user@host
    prePS1+="$None"            # reset color
    prePS1+=":"
fi

prePS1+="$CURRENT_DIRECTORY_COLOR"           # change to brownish yellow
prePS1+='\w'              # current working directory
prePS1+="$None"       # reset color

postPS1='\n'               # new line
postPS1+='$ '             # prompt: always $


PROMPT_COMMAND='__git_ps1 "$prePS1" "$postPS1"'

MSYS2_PS1="$prePS1""$Cya"'`__git_ps1`'"$postPS1" # for detection by MSYS2 SDK's bash.basrc