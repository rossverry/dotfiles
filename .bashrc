if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

# load source files in ~/.bash
for file in ~/.bash/{aliases,completions,paths,config,functions,prompt}; do
    [ -r "$file" ] && source "$file"
done
unset file
