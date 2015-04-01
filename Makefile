deploy:
	git checkout master
	aws s3 sync . s3://www.studiopauwer.nl --cache-control "public, max-age=604800" --exclude ".git/*" --exclude "Makefile"
