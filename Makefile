build:
	-docker rmi -f dqxtools_twitter_webhook
	docker build . -t dqxtools_twitter_webhook

run:
	-docker rm -f dqxtools_twitter_webhook
	docker-compose up -d dqxtools_twitter_webhook
