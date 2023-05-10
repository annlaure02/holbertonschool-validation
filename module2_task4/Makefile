build: ## Generate the website from the markdown and configuration files in the directory dist/.
		markdownlint README.md content/posts/*
		markdown-link-check README.md content/posts/*
		hugo

clean: ## Cleanup the content of the directory dist/
		rm -rf dist/*

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
		hugo new posts/$(POST_NAME).md
		sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

check: ## Should fail when one of the 2 following steps fails
		markdownlint README.md content/posts/*
		markdown-link-check README.md content/posts/*

validate: ## Validate the file ./dist/index.html by using the command line Holberton’s W3C Validator, but should not fail if the file is not valid
		python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html || true

help: ## Prints out the list of targets and their usage
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
