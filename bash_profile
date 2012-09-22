#some useful path additions
export PATH=$PATH:/usr/local/bin/:/opt/local/bin:/Developer/usr/bin

#for the airport utility (airport -s)
export PATH=$PATH:System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#use ctrl+x ctrl+e to edit the current cmd-line in vim
export EDITOR=/usr/bin/vim

#preview alias to preview everything (i.e. echo lala | preview |or cat test.php | preview )
alias preview='groff -Tps > /tmp/tmp.ps && open -a Preview /tmp/tmp.ps'

#easily start a local python server in the current directory
alias serve='python -m SimpleHTTPServer 8000'

#colored ls
alias ll='ls -l -G -h'

#Display the current directory in the terminal window title
PS1="\[\e[0;31m\][\[\e[1;31m\]\u\[\e[0;34m\]@\h \[\e[32m\]\w\[\e[0;31m]\]\$\[\e[0m\] "

#remove apple qarantine flag (in a folder)
alias unquaratine='xattr -rd com.apple.quarantine .'

#SSH tab completion of hosts that exist in ~/.ssh/config
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

#highlight grep
alias grep="grep --color=auto"

#nobrainer
alias rm="rm -i"

alias ql='qlmanage -p 2>/dev/null'

#create a directory structure, and delve into it
take () {
	mkdir -p $1 && cd $1
}

#Open manpage in preview
pman () {
	    man -t "${1}" | open -f -a /Applications/Preview.app
		}

# Curl as safari, accept cookies
safaricurl () {
 curl -O -L -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30" -b /tmp/cookies.txt -c /tmp/cookies.txt $1
}
