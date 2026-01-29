printf "OS:        %s\n" "$OS"
printf "Kernel:    Hardened (Android)\n"
printf "User:      root\n"

cpu=$(uname -m)
printf "CPU:       %s\n" "$cpu"

gpu=$(getprop ro.hardware.vulkan 2>/dev/null)
[ -z "$gpu" ] && gpu="Generic"
printf "GPU:       %s\n" "$gpu"

mem=$(free -h 2>/dev/null | awk '/Mem:/ {print $2}')
[ -z "$mem" ] && mem="Unknown"
printf "Memory:    %s\n" "$mem"

cores=$(getconf _NPROCESSORS_ONLN 2>/dev/null)
[ -z "$cores" ] && cores="Unknown"
printf "Cores:     %s\n" "$cores"

printf "Mode:      Offensive\n"
