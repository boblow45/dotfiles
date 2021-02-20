alias lt='ls --human-readable --size -1 -S --classify'
# list all mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
# short by modification
alias left='ls -t -1'    
# copy with process bar
alias cpv='rsync -ah --info=progress2'

# Python
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'