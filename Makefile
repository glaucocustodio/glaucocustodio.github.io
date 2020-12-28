upload:
	scp -r _site/* superuser@198.199.78.214:/home/superuser/glaucocustodio/

install:
	gem install github-pages

run:
	jekyll serve
