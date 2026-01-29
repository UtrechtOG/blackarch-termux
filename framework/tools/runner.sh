BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
. "$BASE_DIR/framework/config/paths.conf"

tool="$1"
[ -z "$tool" ] && exit 1

for category in recon web exploit osint mobile; do
  tool_dir="$BLACKARCH_OPT/$category/$tool"
  if [ -d "$tool_dir" ] && [ -f "$tool_dir/.run" ]; then
    cd "$tool_dir" || exit 1
    sh "$(cat .run)"
    exit 0
  fi
done

printf "Tool not found\n"
exit 1
