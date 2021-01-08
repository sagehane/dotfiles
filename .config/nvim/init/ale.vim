let g:ale_fix_on_save = 1

let g:ale_linters = {'rust': ['cargo', 'analyzer'], 'zig': ['zls']}
let g:ale_fixers = {'*': ['trim_whitespace'], 'nix': ['nixpkgs-fmt'], 'rust': ['rustfmt']}
