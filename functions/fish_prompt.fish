function fish_prompt --description 'Write out the prompt'
	set -l status_color

    if [ $status -eq 0 ]
        set status_color $prompt_color_success
    else
        set status_color $prompt_color_error
    end

    echo -n -s (set_color $status_color) (prompt_pwd) " ❯ "
end
