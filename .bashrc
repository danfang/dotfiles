if [ -z "$PS1" ]; then
    return;
fi

shopt -s checkwinsize

for file in ~/.bash_{aliases,prompt,exports}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
