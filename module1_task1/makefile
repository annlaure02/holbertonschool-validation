

built:
		hugo

clean:
		rm -rf dist/*

post:
		hugo new posts/$(POST_NAME).md
		$(POST_TITLE) content/posts/$(POST_NAME).md