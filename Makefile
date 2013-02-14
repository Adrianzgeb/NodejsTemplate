
new:
	mkdir $(P)
	cd node-skeleton && cp -rf * ../$(P)
	cd $(P) && git init && git add -A && git commit -m "Initial commit."
	cd $(P) && touch .gitignore && echo "*.DS_Store" >> .gitignore
	cd $(P) && heroku apps:create
ifdef HEROKU
	cd $(P) && heroku apps:rename $(HEROKU)
endif