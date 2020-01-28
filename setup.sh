sudo apt update
sudo apt install -y python-picamera motion autoconf automake build-essential pkgconf libtool libzip-dev libjpeg-dev git libavformat-dev libavcodec-dev libavutil-dev libswscale-dev libavdevice-dev libwebp-dev gettext libmicrohttpd-dev

pip install slacker

sudo ln -s ${PWD}/motion-mmalcam-both.conf /etc/motion/motion-mmalcam-both.conf
sudo ln -s ${PWD}/pi-motion-camera.service /etc/systemd/system/pi-motion-camera.service
