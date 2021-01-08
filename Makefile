build_name_gender:
	python3 -m coffeehouse_dltc --train-model name_gender

build_email_contents:
	python3 -m coffeehouse_dltc --train-model advanced_sentiments

build:
	make build_name_gender
	make build_email_contents

test_name_gender:
	python3 -m coffeehouse_dltc --test-model name_gender_build

test_advanced_sentiments:
	python3 -m coffeehouse_dltc --test-model advanced_sentiments_build

clean:
	@for f in $(shell ls name_gender); do \
		echo "Processing $${f}" && sort -u "name_gender/$${f}" > "name_gender/$${f}.clean" && rm "name_gender/$${f}" && mv "name_gender/$${f}.clean" "name_gender/$${f}"; \
	done
	@for f in $(shell ls advanced_sentiments); do \
		echo "Processing $${f}" && sort -u "advanced_sentiments/$${f}" > "advanced_sentiments/$${f}.clean" && rm "advanced_sentiments/$${f}" && mv "advanced_sentiments/$${f}.clean" "advanced_sentiments/$${f}"; \
	done