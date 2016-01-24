build:
	hugo --theme=hugo-theme-air

watch:
	open http://127.0.0.1:1313
	hugo server --buildDrafts --watch --theme=hugo-theme-air

init:
	brew update
	brew install hugo

upload: build
	gsutil rsync -R public gs://meshbird.com