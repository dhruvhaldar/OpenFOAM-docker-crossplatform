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
  cat << "EOF"

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
                                           
EOF

  # Print a colorful welcome and system information
  echo -e "${BOLD}${GREEN}Welcome, $(whoami)!${NC}"
  echo -e "${BOLD}Hostname :${NC} ${CYAN}$(hostname)${NC}"
  echo -e "${BOLD}Date/Time:${NC} ${YELLOW}$(date)${NC}"
  echo -e "${BOLD}Uptime   :${NC} ${BLUE}$(uptime -p 2>/dev/null || echo "N/A")${NC}"
  echo -e "${BOLD}Load Avg :${NC} ${MAGENTA}$(cut -d ' ' -f1-3 /proc/loadavg)${NC}"

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