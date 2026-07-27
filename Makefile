site = site/
host = tilde

.PHONY: publish
publish:			# Publish the site.
	rsync -avvlHz --exclude=.DS_Store --exclude=.git --exclude=.gitignore --delete $(site)/ $(host):public_gopher

### Makefile ends here
