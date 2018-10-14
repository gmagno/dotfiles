# Defined in - @ line 0
function l --description 'alias l ls -lFH'
	command grc ls -lFH --human-readable --color=always --group-directories-first $argv;
end
