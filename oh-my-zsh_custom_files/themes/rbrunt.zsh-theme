local host_colour="green"
if [ -n "$SSH_CLIENT" ]; then
	local host_colour="yellow"
fi

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg_bold[green]%}%n@%{$fg_bold[$host_colour]%}%M %{$fg[blue]%}%3~ %{$fg_bold[blue]%}%# %{$reset_color%}'
RPROMPT='${return_code}$(git_prompt_ahead)$(git_prompt_info)$(git_prompt_short_sha)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="]"

ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%}!"

ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg_bold[white]%}[%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg_bold[white]%}]"
