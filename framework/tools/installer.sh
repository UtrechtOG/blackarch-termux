BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
. "$BASE_DIR/framework/config/paths.conf"

for category in recon web exploit osint mobile; do
  manifest_dir="$BASE_DIR/framework/tools/manifests/$category"
  target_dir="$BLACKARCH_OPT/$category"
  [ -d "$manifest_dir" ] || continue
  mkdir -p "$target_dir"
  for manifest in "$manifest_dir"/*; do
    [ -f "$manifest" ] || continue
    repo=$(sed -n '1p' "$manifest")
    name=$(sed -n '2p' "$manifest")
    cmd=$(sed -n '3p' "$manifest")
    tool_dir="$target_dir/$name"
    [ -d "$tool_dir/.git" ] && continue
    git clone --quiet "$repo" "$tool_dir"
    printf "%s\n" "$cmd" > "$tool_dir/.run"
  done
done

printf "Tools deployed\n"
