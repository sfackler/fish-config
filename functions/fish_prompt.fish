function fish_prompt --description 'Write out the prompt'
    echo -n -s $__fish_prompt_cwd (prompt_pwd) $__fish_prompt_normal " > "
end
