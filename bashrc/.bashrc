# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Distribute bashrc into smaller, more specific files
source .shells/defaults.sh
source .shells/exports.sh
source .shells/alias.sh
source .shells/prompt_1.sh   # Fancy prompt with time and current working dir
