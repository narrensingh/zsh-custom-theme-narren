function node_prompt_version {
    if which node &> /dev/null; then
        echo "%{$fg_bold[blue]%}node(%{$fg[red]%}$(node -v)%{$fg[blue]%}) %{$reset_color%}"
    fi
}

PROMPT="%(?:%{$fg_bold[green]%}✅ :%{$fg_bold[red]%}❌)"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%}📂 $(node_prompt_version)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}git:(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}) %{$fg[green]%}🍻"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) 🚀"