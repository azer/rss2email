rss=~/.config/dotfiles/rssfeeds

run:
	./r2e run

edit: 
	vim $(rss)

list:
	./r2e list

emails:
	@$(MAKE) feeds --silent | awk -F'[ ,;]' '{for(i=0;++i<=NF;){if($$i~/@/)$$0=$$i}}1' ORS="\n" | awk '!x[$$0]++'

feeds:
	@cat $(rss) | grep http

import:
	@$(MAKE) feeds --silent | xargs -n2 ./r2e add

new:
	./r2e new
	$(MAKE) emails --silent | xargs ./r2e email

clean:
	@rm -f feeds.dat

reset:
	@$(MAKE) clean
	@$(MAKE) new --silent
	@$(MAKE) import --silent
