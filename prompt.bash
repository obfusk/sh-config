# --                                                            # {{{1
#
# File        : ~/cfg/prompt.bash
# Maintainer  : Felix C. Stegerman <flx@obfusk.net>
# Date        : 2012-12-11
#
# Copyright   : Copyright (C) 2012  Felix C. Stegerman
# Licence     : GPLv2
#
# --                                                            # }}}1

# --                                                            # {{{1
#
# \u user, \h host, \w cwd, \j jobs, $? exitcode, \$ $|#
#
# colours:
#   between \[\033[ and m\]
#
#   black       0;30    dark gray     1;30
#   blue        0;34    light blue    1;34
#   green       0;32    light green   1;32
#   cyan        0;36    light cyan    1;36
#   red         0;31    light red     1;31
#   purple      0;35    light purple  1;35
#   brown       0;33    yellow        1;33
#   light gray  0;37    white         1;37
#
# --                                                            # }}}1

function __mkprompt ()                                          # {{{1
{
  local prompt red grn wht non

  prompt='[GRN\uNON@RED\hNON (WHT\jNONj WHT$?NON?) WHT\wNON'
  prompt+='$( __git_ps1 )]\n\$ '

  red='\\\[\\033\[0;31m\\\]'
  grn='\\\[\\033\[0;32m\\\]'
  wht='\\\[\\033\[0;37m\\\]'
  non='\\\[\\033\[0m\\\]'

  echo "$prompt" \
    | sed " s!RED!$red!g; s!GRN!$grn!g; s!WHT!$wht!g; s!NON!$non!g; "
}
                                                                # }}}1

PS1="$( __mkprompt )"

# vim: set tw=70 sw=2 sts=2 et fdm=marker :
