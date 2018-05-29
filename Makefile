EXTRA_VERSION = "-qmx-$(shell git describe --always)"

docker-build:
	@docker build -t dwm-builder .
	@docker run --rm -v "$(shell pwd)/dwm:/work" -w /work -u "$(shell id -u)" dwm-builder make clean all EXTRA_VERSION="${EXTRA_VERSION}"
