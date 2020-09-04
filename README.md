# My Home - Printer

[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FIanStorm%2Fmy-home-printer%2Fbadge%3Fref%3Dmain&style=flat&label=build&logo=none)](https://actions-badge.atrox.dev/IanStorm/my-home-printer/goto?ref=main)
[![Docker Pulls](https://img.shields.io/docker/pulls/ianstorm/my-home-printer)](https://hub.docker.com/r/ianstorm/my-home-printer)
[![Docker Stars](https://img.shields.io/docker/stars/ianstorm/my-home-printer)](https://hub.docker.com/r/ianstorm/my-home-printer)

Garage project for **private purposes**.
Makes the non-network printer available to all decives in my home.

**🐳 Make sure you have installed *Docker*.**

See how to put this repo in action at [IanStorm/my-smart-home-ras-pi](https://github.com/IanStorm/my-smart-home-ras-pi).


## How to use in "production"? 👨‍💼 👩‍💼

1. Follow ["How to get a pre-built Docker image?"](#-how-to-get-a-pre-built-docker-image-☁️)
2. Start a Docker instance:
```
$	docker run \
		--rm \
		-t \
		-p 631:631 \
		-v /dev/bus/usb/:/dev/bus/usb/ \
		--privileged \
		ianstorm/my-home-printer:latest
```
*
	* `-p 631:631`: Makes the CUPS configuration page available in network
	* `-v /dev/bus/usb/:/dev/bus/usb/`: Makes host's USB devices, e.g. printers, available to the Docker container
	* `--privileged`: Allows access to host's USB devices
3. The printer is now reachable via `http://<ip-address-or-hostname>:631/printers/HP_Photosmart_5520`


## How to develop? 👨‍💻 👩‍💻

Make sure you have installed *Visual Studio Code*.

1. Clone this repository.
2. `cd` inside the cloned folder.
2. Build the Docker image: Run the vscode task `build`.


## Appendix

### How to get a pre-built Docker image? ☁️

Get the latest Docker image from Docker Hub:
```
$	docker pull ianstorm/my-home-printer:latest
```


### Sources

* [Raspberry Pi: Print-Server mit CUPS und AirPrint einrichten](https://www.elektronik-kompendium.de/sites/raspberry-pi/2007081.htm#:~:text=Mit%20CUPS%20kann%20man%20einen%20Drucker-Server%20%28Print-Server%29%20im,eignet%20sich%20ein%20stromsparender%20Raspberry%20Pi%20besonders%20gut.)
* [So setzen Sie Ihren Raspberry Pi als Druckerserver ein](https://www.pcwelt.de/ratgeber/Raspberry-Pi-als-Druckerserver-einrichten-9966966.html?utm_source=desktop_site&utm_medium=browser&utm_term=9966966&utm_campaign=mobile_redirect)
* [Docker - a way to give access to a host USB or serial device?](https://stackoverflow.com/q/24225647)
* ~~[Samba ports](https://ubuntuforums.org/showthread.php?t=1049222&p=6612317#post6612317)~~
