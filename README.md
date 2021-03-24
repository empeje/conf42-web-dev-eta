# conf42-web-dev-eta
My Talk Materials for the Enjoy Typesafe Web Development with Eta Talk at Conf42 Java 2021

## Presentation Recording

You can get the presentation recording here in my [Loom](https://www.loom.com/share/59abf6587fcf48119fe1f705ee4e9be9).

## How to run

1. Make sure you have Docker installed.
2. Turn on the docker-compose

	$ docker-compose up -d

3. Login to the eta container

	$ docker-compose exec eta bash
	$ cd app

4. Run the app

	$ etlas run

5. Open the app in your local http://localhost:9000