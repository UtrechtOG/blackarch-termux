BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
TOOLS_DIR="$BASE_DIR/opt/blackarch"

for category in recon web exploit osint mobile; do
  dir="$TOOLS_DIR/$category"
  [ -d "$dir" ] || continue
  for tool in "$dir"/*; do
    [ -d "$tool/.git" ] || continue
    cd "$tool" || continue
    git pull --quiet
  done
done

printf "Update complete\n"
