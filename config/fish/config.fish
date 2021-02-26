function fish_prompt
	set_color red
	printf "%s " (prompt_pwd) 
	set_color blue
	printf "%s" '>' 
	set_color green 
	printf "%s" '>' 
	set_color yellow 
	printf "%s " '>' 
	set_color normal
end

alias vim nvim

set -x FZF_DEFAULT_COMMAND "find -L | grep -vE '(build|.git)'"

set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx PATH "$HOME/cross/bin" $PATH
set -gx PATH "$HOME/.local/bin" $PATH
set -gx PATH "$HOME/spicetify-cli/spicetify" $PATH

# opam configuration
source /home/beans/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
