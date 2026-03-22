if status is-interactive
    # Modern Rust CLI replacements
    abbr -a ls  'eza --icons'
    abbr -a ll  'eza -la --icons --git'
    abbr -a lt  'eza --tree --icons -L 2'
    abbr -a cat 'bat'
    abbr -a find 'fd'
    abbr -a grep 'rg'
    abbr -a du  'dust'
    abbr -a top 'btm'
    abbr -a diff 'delta'
    abbr -a sed 'sd'
    abbr -a ps  'procs'
end
