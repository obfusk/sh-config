# MODIFIED {

# set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/bin" ] ; then
#     PATH="$HOME/bin:$PATH"
# fi

for _path in \
  "$HOME/.gem/ruby/1.9.1/bin" \
  "$HOME/.node/bin" "$HOME/opt/pkg/node/bin" \
  "$HOME/opt/bin" "$HOME/bin" ;
do
  [ -d "$_path" ] && PATH="$_path:$PATH"
done
unset _path

export LC_COLLATE=C
export NODE_PATH="$HOME/.node/lib/node_modules"
export GEM_HOME="$HOME/.gem/ruby/1.9.1"

# } MODIFIED
