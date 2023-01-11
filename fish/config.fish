if status is-interactive
    # Commands to run in interactive sessions can go here
    # Remove greeting
    set fish_greeting
end

set -gx EDITOR nvim

# Aliases
alias calendar "calcurse"
alias cal "calcurse"
alias vim "nvim"
alias pdf "mupdf"

fish_add_path /home/xross/.spicetify
