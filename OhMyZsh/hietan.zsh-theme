SPLITTER=$' \ueb10 '
# TODO change colors
START=$'%(?.%K{green}.%K{red})  %k%f'

TIME_ICON=$'\Uf0954'
TIME="${TIME_ICON} %D{%Y-%m-%d %H:%M:%S}"

DIRECTORY_ICON=$'\Uf024b'
DIRECTORY="${SPLITTER}${DIRECTORY_ICON} %~"

GIT_ICON=$'\Uf02a2'
GIT_HEAD="${SPLITTER}${GIT_ICON} "
ZSH_THEME_GIT_PROMPT_PREFIX="${GIT_HEAD}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
GIT='$(git_prompt_info)'

ANACONDA_ICON=$'\Uf0320'
precmd () {
    if [[ -n $CONDA_DEFAULT_ENV ]]; then
        psvar[1]="${SPLITTER}${ANACONDA_ICON} $CONDA_DEFAULT_ENV"
    else
        psvar[1]=""
    fi
}
ANACONDA='%1v'

MARK=$'\ue0b1'

PROMPT="
${START}%F{black}%K{245} ${TIME}${DIRECTORY}${GIT}${ANACONDA} %K{black}%f%E
${MARK} %f%b%k"
RPROMPT='%n@%m'