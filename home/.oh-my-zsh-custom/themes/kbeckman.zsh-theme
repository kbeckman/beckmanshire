# Use the spectrum_ls shell command to list colors.
# When using number representation of a color, use UPPERCASE $FG function...

local user_machine="%{$fg[cyan]%}%n@%{$fg[cyan]%}%m:%{$reset_color%}"
local pwd="%{$fg[yellow]%}%~%{$reset_color%}"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

PROMPT='${user_machine} ${pwd}
${ret_status} $(ruby_prompt_info) $(git_prompt_info)'

ZSH_THEME_RVM_PROMPT_PREFIX="%{$fg_bold[red]%}["
ZSH_THEME_RVM_PROMPT_SUFFIX="]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
