if status is-interactive
    set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
    starship init fish | source
    zoxide init fish | source
end
