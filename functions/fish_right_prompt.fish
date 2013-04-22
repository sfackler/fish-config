function fish_right_prompt --description 'Write out the right prompt'
	set -g __fish_git_prompt_showdirtystate 1
	set -g __fish_git_prompt_showstashstate 1
	set -g __fish_git_prompt_showuntrackedfiles 1
	set -g __fish_git_prompt_showupstream auto
	set -g __fish_git_prompt_color green
	__fish_git_prompt "[%s]"
end
