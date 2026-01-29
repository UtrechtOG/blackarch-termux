BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

export BLACKARCH_ROOT="$BASE_DIR"
export BLACKARCH_OPT="$BASE_DIR/opt/blackarch"

. "$BASE_DIR/framework/loader/init.sh"
