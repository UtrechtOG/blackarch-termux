BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

. "$BASE_DIR/framework/core/env.sh"
. "$BASE_DIR/framework/core/prompt.sh"

clear
. "$BASE_DIR/framework/core/boot.sh"

printf "\n"
. "$BASE_DIR/framework/core/systeminfo.sh"
printf "\n"
