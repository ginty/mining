DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=70
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=70
sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 180
