docker:
	@if test "$(SLACK_API_TOKEN)" = "" || test "$(SLACK_COC)" = ""; then echo "Need to set/export SLACK_API_TOKEN and SLACK_COC" && exit 1; fi;
	docker build -t phpsp/slackin . && \
	docker run -p 3000:3000 phpsp/slackin ./bin/slackin --coc $$SLACK_COC phpsp $$SLACK_API_TOKEN
