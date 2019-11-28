default:
	@echo "no default target"; false

commit:
	@git add .
	@git commit -m "commit by make"

release:
	BUILD_GIT_BRANCH=$(git describe --all) \
		BUILD_GIT_REV=$(git rev-list --count HEAD) \
		BUILD_GIT_COMMIT=$(git rev-parse HEAD) \
		BUILD_DATE=$("+%F %T +08:00") \
		| goreleaser
