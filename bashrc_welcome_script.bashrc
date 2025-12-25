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
  echo -e "${BOLD}${GREEN}Welcome, ${USER}!${NC}"
  echo -e "${BOLD}Hostname :${NC} ${CYAN}${HOSTNAME}${NC}"
  echo -e "${BOLD}Date/Time:${NC} ${YELLOW}$(printf "%(%a %b %d %H:%M:%S %Z %Y)T\n" -1)${NC}"
  echo -e "${BOLD}Uptime   :${NC} ${BLUE}$(uptime -p 2>/dev/null || echo "N/A")${NC}"
  # Performance optimization: use read builtin instead of spawning cut
  read -r load_one load_five load_fifteen rest < /proc/loadavg
  echo -e "${BOLD}Load Avg :${NC} ${MAGENTA}${load_one} ${load_five} ${load_fifteen}${NC}"

  echo -e "${BOLD}${RED}Have a great day!${NC}"
  echo

  # Display custom shortcuts
  echo -e "${BOLD}${WHITE}Shortcuts:${NC}"
  echo -e "${BOLD}${YELLOW}c${NC} - Clear the terminal"
  echo -e "${BOLD}${YELLOW}openfoam2412${NC} - Start OpenFOAM interactively"
  echo -e "${BOLD}${YELLOW}e${NC} - Exit the terminal"
  echo
}

# Call the function when a new shell session begins
welcome_message

# End of welcome script
