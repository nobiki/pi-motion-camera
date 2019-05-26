# sudo apt update
# sudo apt install -y motion

sudo ln -s ${PWD}/motion-mmalcam-both.conf /etc/motion/motion-mmalcam-both.conf
sudo ln -s ${PWD}/pi-motion-camera.service /etc/systemd/system/pi-motion-camera.service
