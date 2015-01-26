for file in ~/.bash_{aliases,prompt,exports}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
