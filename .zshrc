# Lazy load "colors" functions
# https://unix.stackexchange.com/questions/19498/understanding-colors-in-zsh
# https://stackoverflow.com/questions/6159856/how-do-zsh-ansi-colour-codes-work
autoload -Uz colors && colors

# Enable vi mode
# Press "Esc" to enter "normal".
# Press "i" or "a" to enter "insert".
# Use other vim commands to navigate
bindkey -v

# Prompt string is first subjected to parameter expansion
# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
setopt PROMPT_SUBST

# Load dotfiles:
# zprompt,aliases,functions,envt_vars,paths,zsh_plugins
files=(aliases)
for file in ${files[@]}; do
  file_path="~/.$file"
  echo $file_path
  [ -r "$file_path" ] && [ -f "$file_path" ] && source "$file_path"
done
unset file
