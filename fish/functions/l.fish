# Defined in - @ line 0
function l --description 'alias l ls -lF'
	command grc ls -laF --human-readable --color=always --group-directories-first $argv;
end
