# Defined in - @ line 0
function ll --description 'alias ll ls -la'
	command grc ls -laF --human-readable --color=always --group-directories-first $argv;
end
