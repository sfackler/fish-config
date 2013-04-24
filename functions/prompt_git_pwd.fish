function prompt_git_pwd
	if not set -q prompt_pwd_width
        set prompt_pwd_width 20
    end

    set out $PWD
	if set git_base (git_base_dir)
        set out (echo $out | sed -e "s|^$git_base/\?||")
    end

    echo $out | perl -pe "s|^$HOME|~|; s/.*?(.{$prompt_pwd_width})/..$1/"
end
