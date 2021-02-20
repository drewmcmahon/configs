alias python='python3'
alias pip='pip3'

alias pg-stat='sudo service postgresql status'
alias pg-start='sudo service postgresql start'
alias pg-stop='sudo service postgresql stop'
alias pg-run='sudo -u postgres psql'

function open
  explorer.exe $argv
end

nvm use lts

set -gx FZF_DEFAULT_COMMAND 'fdfind . $HOME'
set -gx FZF_CTRL_T_COMMAND 'fdfind . $HOME'
set -gx FZF_ALT_C_COMMAND  'fdfind -t d . $HOME'

starship init fish | source
