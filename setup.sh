sudo apt update
sudo apt install -y python-pip python-picamera motion autoconf automake build-essential pkgconf libtool libzip-dev libjpeg-dev git libavformat-dev libavcodec-dev libavutil-dev libswscale-dev libavdevice-dev libwebp-dev gettext libmicrohttpd-dev

sudo pip install slacker python-dotenv

sudo ln -s ${PWD}/motion-mmalcam-both.conf /etc/motion/motion-mmalcam-both.conf
sudo ln -s ${PWD}/pi-motion-camera.service /etc/systemd/system/pi-motion-camera.service
sudo systemctl enable pi-motion-camera
sudo systemctl daemon-reload

echo "sudo raspi-config ---> Enable Camera Interface."
