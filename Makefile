
dacha.zip : dacha.js manifest.json
	zip $@ $?

.PHONY: tag

dacha.zip : tag

tag : ##
	git diff --exit-code
	git tag -a `jq -r .version manifest.json`
