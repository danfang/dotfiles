if [ -z "$PS1" ]; then
    return;
fi

shopt -s checkwinsize

for file in ~/.bash_{aliases,prompt,exports}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

if [ $(uname) == "Darwin" ]; then
    # Autojump config
    [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi
