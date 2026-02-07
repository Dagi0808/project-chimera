# Makefile for Project Chimera

.PHONY: setup test spec-check

# Setup environment (for local dev)
setup:
	pip install --upgrade pip
	pip install pytest

# Run tests
test:
	pytest tests/

# Check specs existence
spec-check:
	@test -d specs || (echo "ERROR: specs/ folder missing" && exit 1)
	@test -f specs/functional.md || (echo "ERROR: functional.md missing" && exit 1)
	@test -f specs/technical.md || (echo "ERROR: technical.md missing" && exit 1)
