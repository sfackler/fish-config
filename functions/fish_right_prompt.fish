function fish_right_prompt --description 'Write out the right prompt'
	if not set -q prompt_color_git
        set prompt_color_git 6C6C6C
    end

    set base (basename (git_base_dir) ^/dev/null)

	set -g __fish_git_prompt_showdirtystate 1
	set -g __fish_git_prompt_showstashstate 1
	set -g __fish_git_prompt_showuntrackedfiles 1
	set -g __fish_git_prompt_showupstream auto
	set -g __fish_git_prompt_color $prompt_color_git
	echo -n (set_color $fish_color_normal) (__fish_git_prompt "[$base/%s]")
end
