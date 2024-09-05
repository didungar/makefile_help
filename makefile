.PHONY: help

help:  ## Display help
	@printf "\nUsage:\n  make \033[32m<target>\033[0m\n\nTargets:\n"
	@grep -E '^[a-zA-Z0-9_-]+:.*?##\s*.*$$' makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\t\033[32m%-30s\033[0m %s\n", $$1, $$2}'
	@grep -E '^[a-zA-Z0-9_-]+:\s*[a-zA-Z_-]*?$$' makefile | sort | awk 'BEGIN {FS = ":.*?"}; {printf "\t\033[33m%-30s\033[0m no-documentation\n", $$1, $$2}'

