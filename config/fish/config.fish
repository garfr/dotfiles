function fish_prompt
	set_color red
	printf "%s " (prompt_pwd) 
	set_color blue
	printf "%s " 'λ' 
	set_color normal
end

alias vim nvim

set -x FZF_DEFAULT_COMMAND "find -L"

set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx PATH "$HOME/cross/bin" $PATH

# opam configuration
source /home/beans/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
