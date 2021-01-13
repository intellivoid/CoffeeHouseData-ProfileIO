build_advanced_sentiments:
	python3 -m coffeehouse_dltc --train-model advanced_sentiments

build:
	make build_advanced_sentiments

test_advanced_sentiments:
	python3 -m coffeehouse_dltc --test-model advanced_sentiments_build

clean:
	@for f in $(shell ls advanced_sentiments); do \
		echo "Processing $${f}" && sort -u "advanced_sentiments/$${f}" > "advanced_sentiments/$${f}.clean" && rm "advanced_sentiments/$${f}" && mv "advanced_sentiments/$${f}.clean" "advanced_sentiments/$${f}"; \
	done