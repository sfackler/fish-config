function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

	if not set -q prompt_color_success
        set -U prompt_color_success 5FAF5F --bold
    end

    if not set -q prompt_color_error
        set -U prompt_color_error AF0000 --bold
    end

	set -l status_color

    if [ $last_status -eq 0 ]
        set status_color $prompt_color_success
    else
        set status_color $prompt_color_error
    end

    echo -n -s (set_color $status_color) (prompt_pwd) " ❯ "
end
