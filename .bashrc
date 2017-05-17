alias l="ls -G"

# fast cd
alias ..="cd .."
alias ...='cd ../../../'
alias ....='cd ../../../../'

echo "Welcome Back Eldrick"
PS1="[\W]>>\[$(tput sgr0)\]"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/eldrick/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/eldrick/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/eldrick/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/eldrick/Downloads/google-cloud-sdk/completion.bash.inc'; fi
