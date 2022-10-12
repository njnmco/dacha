
dacha.zip : dacha.js dacha.html manifest.json background.js
	zip $@ $?

.PHONY: tag

dacha.zip : tag

tag : ##
	git diff --exit-code
	git tag -a `jq -r .version manifest.json`
