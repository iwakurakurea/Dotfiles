#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza --icons=always'
alias grep='rg -p'
alias la='eza -lha --icons=always'
alias ll='eza -lh --icons=always'
alias lt='eza -lhT --icons=always'
alias lat='eza -lhaT --icons=always'
alias cls='clear'
alias dir='eza --icons=always'
lovesay meow
eval "$(starship init bash)"
