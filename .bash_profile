# Gasss power terminal prompt,                                                   
 #http://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/
 #\033 is the C-style octal code for an escape character.                        
 # \e[x;ym -- start color scheme with color pair x;y                             
 # \e[m stop color scheme                                                         
export PS1='\e[1;34m\u@\h\e[m : \e[1;32m[ \w ]\e[m ->\n \\$ '

#self_defined alias
#alias vim='nvim'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

alias docker-prune=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '

export lab_machine_ip=128.205.39.146

# git log style, ref to https://git-scm.com/docs/pretty-formats
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias hl="hg log --template '{node|short} | {date|isodatesec} | {author|user}: {desc|strip|firstline}\n'"

# Enables tab completion with git
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

PATH=~/Library/Python/2.7/bin/:$PATH
PATH=~/Library/Python/3.7/bin/:$PATH
PATH=~/dev/google-cloud-sdk/bin:$PATH
PATH=~/dev/flutter/bin:$PATH
source ~/.profile
