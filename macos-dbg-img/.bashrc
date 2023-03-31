sh_dir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

. "$sh_dir/.bashutil"

export DBG_TOP="$sh_dir"
export TERM=xterm-256color
export PATH=$sh_dir/usr/bin:/usr/sbin:$PATH

# ls color mode
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias ls="ls -lah"

PROMPT_COMMAND=__dbg_ps1

. "$sh_dir/.dbgutil"

echo "bash: $BASH_VERSION"
sw_vers
echo ""

mkdir -p /tmp/dbg &&
    cd /tmp/dbg ||
    cd /tmp
