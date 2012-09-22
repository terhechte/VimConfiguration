#some useful path additions
export PATH=$PATH:/usr/local/bin/:/opt/local/bin:/Developer/usr/bin

#for the airport utility (airport -s)
export PATH=$PATH:System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources

#use ctrl+x ctrl+e to edit the current cmd-line in vim
export EDITOR=/usr/bin/vim

#preview alias to preview everything (i.e. echo lala | preview |or cat test.php | preview )
alias preview='groff -Tps > /tmp/tmp.ps && open -a Preview /tmp/tmp.ps'

#easily start a local python server in the current directory
alias serve='python -m SimpleHTTPServer 8000'

#colored ls
alias ll='ls -l -G -h'

#Display the current directory in the terminal window title
#PS1='\[\033]0;TITLE\007\]PROMPT'
#PS1='\[\033]0;\w\007\]\W'
#another option
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

alias desktopsaver='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &'

#create a directory structure, and delve into it
take () {
	mkdir -p $1 && cd $1
}

#Open manpage in preview
pman () {
	    man -t "${1}" | open -f -a /Applications/Preview.app
		}

#open manpage in TextMate
tman () {
	  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
	}

#compile something in static for a specific architecture. i386, x86_64, ppc
compileStaticForArch () {
	arch=$1
	make clean 
	./configure --enable-static --disable-shared CFLAGS="$arch" CXXFLAGS="$arch" CPPFLAGS="$arch" LDFLAGS="$arch" OBJCFLAGS="$arch" OBJCXXFLAGS="$arch" 
	env        CFLAGS="$arch" CXXFLAGS="$arch" CPPFLAGS="$arch" LDFLAGS="$arch" OBJCFLAGS="$arch" OBJCXXFLAGS="$arch" make
	#universal binary is as follows
	#lipo -arch i386 libd.i386 -arch ppc libd.ppc -arch x86_64 libd.x86_64 -create -output libd
}

compileSharedForArch () {
	arch=$1
	make clean
	./configure CFLAGS="$arch" CXXFLAGS="$arch" CPPFLAGS="$arch" LDFLAGS="$arch" OBJCFLAGS="$arch" OBJCXXFLAGS="$arch" 
	env         CFLAGS="$arch" CXXFLAGS="$arch" CPPFLAGS="$arch" LDFLAGS="$arch" OBJCFLAGS="$arch" OBJCXXFLAGS="$arch" make
}

##
# Your previous /Users/terhechte/.bash_profile file was backed up as /Users/terhechte/.bash_profile.macports-saved_2010-08-06_at_17:49:55
##

# MacPorts Installer addition on 2010-08-06_at_17:49:55: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


export NARWHAL_ENGINE=jsc

export PATH="/usr/local/narwhal/bin:$PATH"
export CAPP_BUILD=/Users/terhechte/Development/Cappuccino/framework

export NARWHAL_ENGINE=jsc

# run pagekite
pagekite () {
		python ~/dotvim/pagekite.py $2 $1.pagekite.me
}

postfile () {
	wget post-file.it --post-file $1
}

##
# Your previous /Users/terhechte/.bash_profile file was backed up as /Users/terhechte/.bash_profile.macports-saved_2011-10-17_at_13:13:26
##

# MacPorts Installer addition on 2011-10-17_at_13:13:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

