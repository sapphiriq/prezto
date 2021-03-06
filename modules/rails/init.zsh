#
# Defines Ruby on Rails aliases.
#
# Authors:
#   Robby Russell <robby@planetargon.com>
#   Jake Bell <jake.b.bell@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[rails] )); then
  return 1
fi

#
# Aliases (Compatible with Rails 2)
#

alias ror='rails'
alias rorc='_rails-command console'
alias rordc='_rails-command dbconsole'
alias rordm='rake db:migrate'
alias rordM='rake db:migrate db:test:clone'
alias rordr='rake db:rollback'
alias rorg='_rails-command generate'
alias rorl='tail -f log/development.log'
alias rorlc='rake log:clear'
alias rorp='_rails-command plugin'
alias rorr='_rails-command runner'
alias rors='_rails-command server'
alias rorsd='_rails-command server --debugger'
alias rorx='_rails-command destroy'

alias rorgs='_rails-command generate scaffold'
alias rorgc='_rails-command generate controller'
alias rorgm='_rails-command generate model'
alias rorgmi='_rails-command generate migration'

#
# Functions
#

function _rails-command {
  if [[ -e "bin/rails" ]]; then
    ruby bin/rails "$@"
  elif [[ -e "script/server" ]]; then
    ruby script/"$@"
  else
    ruby script/rails "$@"
  fi
}

