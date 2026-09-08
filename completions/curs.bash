# bash completion for curs
_curs() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local prev="${COMP_WORDS[COMP_CWORD - 1]}"
  local cmds profiles

  cmds="$(curs --complete-commands 2>/dev/null)"
  profiles="$(curs --complete-profiles 2>/dev/null)"

  if [[ "$COMP_CWORD" -eq 1 ]]; then
    COMPREPLY=($(compgen -W "$cmds $profiles" -- "$cur"))
    return
  fi

  case "$prev" in
    edit | rm | remove | delete | which)
      COMPREPLY=($(compgen -W "$profiles" -- "$cur"))
      ;;
    add)
      COMPREPLY=($(compgen -W "--label --email --launch" -- "$cur"))
      ;;
    --label | --email) ;;
    *)
      COMPREPLY=($(compgen -W "--label --email --launch --yes" -- "$cur"))
      ;;
  esac
}

complete -F _curs curs
