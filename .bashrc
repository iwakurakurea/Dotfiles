#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza --icons=always'
alias grep='grep --color=auto'
alias la='eza -lBha --icons=always'
alias ll='eza -lBh --icons=always'
alias lt='eza -lBhT --icons=always'
alias lat='eza -lBhaT --icons=always'
alias cls='clear'
alias dir='eza --icons=always'
lovesay meow
eval "$(starship init bash)"
