# Find all .txt files in instagram_posts and generate corresponding .png targets
TXT_FILES := $(wildcard instagram_posts/*.txt)
PNG_FILES := $(TXT_FILES:.txt=.png)

all: $(PNG_FILES)

instagram_posts/%.png: instagram_posts/%.txt tools/gen_insta
	./tools/gen_insta $< $@

clean:
	rm -f instagram_posts/*.png

.PHONY: all clean
