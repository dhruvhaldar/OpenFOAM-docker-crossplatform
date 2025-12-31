# ─────────────────────────────────────────────────────────────────────────────
# Beautiful startup welcome script with shortcuts
# Add this snippet to your ~/.bashrc
# ─────────────────────────────────────────────────────────────────────────────

# Define some color and style variables
BOLD='\033[1m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m'  # No Color

welcome_message() {
  # Clear the terminal (optional)
  # clear

  # ASCII art banner (customize or replace with your own)
  # Bolt: Use printf to avoid spawning 'cat' process
  printf '%s\n' '

 ██████╗ ██████╗ ███████╗███╗   ██╗███████╗ ██████╗  █████╗ ███╗   ███╗    
██╔═══██╗██╔══██╗██╔════╝████╗  ██║██╔════╝██╔═══██╗██╔══██╗████╗ ████║    
██║   ██║██████╔╝█████╗  ██╔██╗ ██║█████╗  ██║   ██║███████║██╔████╔██║    
██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║██╔══╝  ██║   ██║██╔══██║██║╚██╔╝██║    
╚██████╔╝██║     ███████╗██║ ╚████║██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║    
 ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝    
                                                                           
████████╗███████╗███████╗████████╗ ██████╗ █████╗ ███████╗███████╗███████╗ 
╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔════╝██╔════╝ 
   ██║   █████╗  ███████╗   ██║   ██║     ███████║███████╗█████╗  ███████╗ 
   ██║   ██╔══╝  ╚════██║   ██║   ██║     ██╔══██║╚════██║██╔══╝  ╚════██║ 
   ██║   ███████╗███████║   ██║   ╚██████╗██║  ██║███████║███████╗███████║ 
   ╚═╝   ╚══════╝╚══════╝   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝                                    
                                           
'

  # Print a colorful welcome and system information
  # Bolt: Use shell builtins ($USER, $HOSTNAME, printf) to avoid spawning processes
  # Calculate uptime using pure bash to avoid spawning 'uptime' process
  local up_seconds days hours minutes output current_time
  if read -r up_seconds _ < /proc/uptime; then
    up_seconds="${up_seconds%.*}"
    days=$((up_seconds / 86400))
    hours=$(( (up_seconds % 86400) / 3600 ))
    minutes=$(( (up_seconds % 3600) / 60 ))
    output="up"
    if [ "$days" -gt 0 ]; then
      output="$output $days day"
      [ "$days" -ne 1 ] && output="${output}s"
      output="${output},"
    fi
    if [ "$hours" -gt 0 ]; then
      output="$output $hours hour"
      [ "$hours" -ne 1 ] && output="${output}s"
      output="${output},"
    fi
    if [ "$minutes" -gt 0 ] || [ "$output" = "up" ]; then
      output="$output $minutes minute"
      [ "$minutes" -ne 1 ] && output="${output}s"
    else
      output="${output%,}"
    fi
  else
    output="N/A"
  fi

  printf -v current_time "%(%a %b %d %H:%M:%S %Z %Y)T" -1
  printf "${BOLD}${GREEN}Welcome, ${USER}!${NC}\n"
  printf "${BOLD}Hostname :${NC} ${CYAN}${HOSTNAME}${NC}\n"
  printf "${BOLD}Date/Time:${NC} ${YELLOW}${current_time}${NC}\n"
  printf "${BOLD}Uptime   :${NC} ${BLUE}${output}${NC}\n"

  # Performance optimization: use read builtin instead of spawning cut
  read -r load_one load_five load_fifteen rest < /proc/loadavg
  printf "${BOLD}Load Avg :${NC} ${MAGENTA}${load_one} ${load_five} ${load_fifteen}${NC}\n"

  printf "${BOLD}${RED}Have a great day!${NC}\n"
  echo

  # Display custom shortcuts
  printf "${BOLD}${WHITE}Shortcuts:${NC}\n"
  printf "${BOLD}${YELLOW}c${NC} - Clear the terminal\n"
  printf "${BOLD}${YELLOW}openfoam2412${NC} - Start OpenFOAM interactively\n"
  printf "${BOLD}${YELLOW}e${NC} - Exit the terminal\n"
  printf "\n"
}

# Call the function when a new shell session begins
welcome_message

# End of welcome script
