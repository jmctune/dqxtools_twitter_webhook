# Discord-twitter-webhooks


`discord-twitter-webhooks` is an automated tool that checks [Twitter](https://twitter.com) for new tweets and sends them to a [Discord](https://discord.com/) webhook.

This bot is configured with a config file or environment variables and is written in Python.

This is a fork of [TheLovinator1](https://github.com/TheLovinator1)'s `discord-twitter-webhooks` with support for sending text through a translation service as this is used for one Twitter account that sends Japanese text.

## Installation

docker-compose.yml:

```yaml
version: "3"
services:
  dqxtools_twitter_webhook:
    image: dqxtools_twitter_webhook
    env_file:
      - .env
    container_name: dqxtools_twitter_webhook
    environment:
      - WEBHOOK_URL=${WEBHOOK_URL}
      - CONSUMER_KEY=${CONSUMER_KEY}
      - CONSUMER_SECRET=${CONSUMER_SECRET}
      - ACCESS_TOKEN=${ACCESS_TOKEN}
      - ACCESS_TOKEN_SECRET=${ACCESS_TOKEN_SECRET}
      - USERS_TO_FOLLOW=${USERS_TO_FOLLOW}
      - LOG_LEVEL=${LOG_LEVEL}
      - TWITTER_IMAGE_COLLAGE_API=${TWITTER_IMAGE_COLLAGE_API}
      - DEEPL_FREE_API_KEY=${DEEPL_FREE_API_KEY}
    restart: always
```

## Environment variables

No space should be between the equal sign in your .env.

Right click channel you want the tweets in -> Integrations -> Webhooks -> New Webhook -> Copy Webhook URL

- WEBHOOK_URL=https://discordapp.com/api/webhooks/582694/a3hmHAXItB_lzSYBx0-CeVeUDqac1vT

Go to [Twitter](https://developer.twitter.com/en/portal/apps/new) and create an app. After it is created go to Keys and tokens. CONSUMER_KEY = API key, CONSUMER_SECRET = API key secret:

- CONSUMER_KEY=ASFkopkoasfPOFkopaf
- CONSUMER_SECRET=ASFkopkoasfPOFkopafASFkopkoasfPOFkopafASFkopkoasfPOFkopaf
- ACCESS_TOKEN=1294501204821094-kKPOASPKOFpkoaskfpo
- ACCESS_TOKEN_SECRET=ASKOpokfpkoaspofOPFPO2908iAKOPSFKPO

List of Twitter users to follow, a comma-separated list with no spaces.

- USERS_TO_FOLLOW=12549841489201410,18205090125,852185020125098

Get replies to other people: (Optional)

- USER_LIST_REPLIES_TO_OTHERS_TWEET=12549841489201410,852185020125098

Get replies from other people on our tweets: (Optional)

- USER_LIST_REPLIES_TO_OUR_TWEET=12549841489201410,852185020125098

Get a message when a user retweets tweet: (Optional)

- USER_LIST_WE_RETWEET_SOMEONE_ELSES_TWEET=12549841489201410,18205090125

Get a message when a users tweet is retweeted by someone else: (Optional)

- USER_LIST_SOMEONE_RETWEETS_OUR_TWEET=18205090125

Should we message when a user retweets their own tweet? True or False

- GET_RETWEET_OF_OWN_TWEET=False

How much logging should be sent to the terminal? Can be CRITICAL, ERROR, WARNING, INFO or DEBUG

- LOG_LEVEL=INFO

Server that runs [twitter-image-collage-maker](https://github.com/TheLovinator1/twitter-image-collage-maker). See [Privacy](#privacy) for more information.

- TWITTER_IMAGE_COLLAGE_API=https://twitter.lovinator.space/add

## Privacy

If the tweet has more than 1 image this bot sends the tweet ID to [twitter.lovinator.space](https://twitter.lovinator.space/) that combines them into one image that we can use in the embed.
The only information that is stored is the tweet ID and combined image. No other information will be saved (e.g. IP address)
You can run [your own version](https://github.com/TheLovinator1/twitter-image-collage-maker) instead of using the default one.

