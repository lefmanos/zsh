#!/bin/zsh
#
# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
#
# Beer prompt
# PROMPT='%F{yellow}${vcs_info_msg_0_}%f🖥️ %F{blue}%1~%f%F{cyan}🐐%n%f🍺'

PROMPT='%F{yellow}${vcs_info_msg_0_}%f%F{cyan}[%F{blue}%2~%f%F{cyan}]%f%(!.#.$) '

# RPROMPT='%F{yellow}${vcs_info_msg_0_}%f'
# PROMPT='%F{cyan}[%F{blue}%2~%f%F{cyan}]%f%(!.#.$) '

# PROMPT="%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%} ${vcs_info_msg_0_}%{$reset_color%}%B%b "

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
# zstyle ':vcs_info:*' unstagedstr '💩'
# zstyle ':vcs_info:*' stagedstr '🗞️'
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
# Set the format of the Git information for vcs_info
# zstyle ':vcs_info:git:*' formats       '🎋%b%u%c'
zstyle ':vcs_info:git:*' formats       '::%b%u%c'
# zstyle ':vcs_info:git:*' actionformats '🎋%b|%a%u%c'
zstyle ':vcs_info:git:*' actionformats '::%b|%a%u%c'


