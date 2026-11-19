site = site/
#host = team
host = town

.PHONY: view
view:				# View the site in a browser.
	uv run smolserve --config smolserve.toml exec rogallo open gopher://localhost:7070/1/

.PHONY: publish
publish:			# Publish the site.
	rsync -avvlHz --exclude=.DS_Store --exclude=.git --exclude=.gitignore --delete $(site)/ $(host):public_gopher

### Makefile ends here
