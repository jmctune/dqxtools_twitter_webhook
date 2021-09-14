build:
	-docker rmi -f dqxtools_twitter_webhook
	docker build . -t dqxtools_twitter_webhook

stop:
	-docker rm -f dqxtools_twitter_dqx
	-docker rm -f dqxtools_twitter_seven_wonders
	-docker rm -f dqxtools_twitter_wandering_npcs

run:
	-docker rm -f dqxtools_twitter_dqx
	-docker rm -f dqxtools_twitter_seven_wonders
	-docker rm -f dqxtools_twitter_wandering_npcs
	docker-compose --env-file .dqx.env up -d dqxtools_twitter_dqx
	docker-compose --env-file .seven_wonders.env up -d dqxtools_twitter_seven_wonders
	docker-compose --env-file .wandering_npcs.env up -d dqxtools_twitter_wandering_npcs

logs:
	docker logs dqxtools_twitter_dqx --tail 20
	docker logs dqxtools_twitter_seven_wonders --tail 20
	docker logs dqxtools_twitter_wandering_npcs --tail 20
