# Simple make targets to serve the static site locally

PORT ?= 5173

.PHONY: help serve-python serve-serve serve-http open

help:
	@echo "Available targets:"
	@echo "  make serve-python   # Serve with Python http.server on port $(PORT)"
	@echo "  make serve-serve    # Serve with npx serve on port $(PORT)"
	@echo "  make serve-http     # Serve with npx http-server on port $(PORT)"
	@echo "Variables: PORT (default: $(PORT))"

serve-python:
	@echo "Serving with Python on http://localhost:$(PORT)"
	python -m http.server $(PORT)

serve-serve:
	@echo "Serving with npx serve on http://localhost:$(PORT)"
	npx --yes serve -l $(PORT)

serve-http:
	@echo "Serving with npx http-server on http://localhost:$(PORT)"
	npx --yes http-server -p $(PORT) -c-1
