clear

cols=$(tput cols)
lines=$(tput lines)

i=0
while [ $i -lt $lines ]; do
  j=0
  line=""
  while [ $j -lt $cols ]; do
    line="${line}\e[31mλ\e[0m"
    j=$((j+1))
  done
  printf "%b\n" "$line"
  sleep 0.03
  i=$((i+1))
done

sleep 0.2
clear

cat "$BLACKARCH_ROOT/framework/ui/ascii/blackarch.txt"
printf "\n"
printf "BlackArch Linux – Offensive Security Framework\n\n"

printf "OS:        %s\n" "$OS"
printf "Kernel:    Hardened (Android)\n"
printf "User:      root\n"
printf "CPU:       ARM\n"
printf "GPU:       Generic\n"
printf "Memory:    $(free -h 2>/dev/null | awk '/Mem:/ {print $2}' || echo Unknown)\n"
printf "Mode:      Offensive\n\n"

sleep 0.3
