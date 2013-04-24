function git_base_dir --description If\ called\ in\ a\ git\ repository,\ returns\ the\ absolute\ path\ of\ the\ repository\'s\ base\ directory
	git rev-parse --show-toplevel ^/dev/null
end
