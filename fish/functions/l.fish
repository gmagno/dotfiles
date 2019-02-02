# Defined in - @ line 0
function l --description 'alias l ls -lF'
	command grc ls -lF --human-readable --color=always --group-directories-first $argv;
end
