if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[032]⟪%2~⟫$(git_prompt_info) $FG[105]%(!.#.λ).%{$reset_color%}'
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
RPROMPT='$FG[237](%W|%T)%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]::⟪"
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[040]✔"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[160]✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]⟫%{$reset_color%}"
