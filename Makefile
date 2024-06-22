new:
	cd app && hugo new content/posts/$(shell date '+%Y-%m-%d')/index.md

run:
	cd app && docker build -t incubation-rendezvous:latest . && docker run --rm -it -p 8000:8000 incubation-rendezvous:latest

run-dev:
	cd app && npx blowfish-tools run
