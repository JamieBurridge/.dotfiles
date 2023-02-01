if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

function f
    fff $argv
    set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
    cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end

set -gx EDITOR vim
set -gx VISUAL vim
set -gx BROWSER firefox
set -gx SHELL fish
