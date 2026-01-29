BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

printf "Environment: "
[ -n "$OS" ] && printf "OK\n" || printf "FAIL\n"

printf "User: "
[ "$USER" = "root" ] && printf "OK\n" || printf "FAIL\n"

printf "Directories:\n"
for d in framework opt/blackarch termux; do
  [ -d "$BASE_DIR/$d" ] && printf "%s: OK\n" "$d" || printf "%s: FAIL\n" "$d"
done

printf "Tools:\n"
for category in recon web exploit osint mobile; do
  count=$(ls "$BASE_DIR/opt/blackarch/$category" 2>/dev/null | wc -l)
  printf "%s: %s\n" "$category" "$count"
done
