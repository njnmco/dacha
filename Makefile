
zasnut.zip : zasnut.js manifest.json
	zip $@ $?

.PHONY: tag

zasnut.zip : tag

tag : ##
	git diff --exit-code
	git tag -a `jq -r .version manifest.json`
