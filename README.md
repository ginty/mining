### Install NVIDIA drivers

~~~
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-384 nvidia-libopencl1-384 nvidia-opencl-icd-384
~~~

### Create xorg config

Remove existing /etc/X11/xorg.conf first

~~~
sudo touch /etc/X11/xorg.conf 

sudo nvidia-xconfig -s -a --allow-empty-initial-configuration \
--cool-bits=12 --registry-dwords="PerfLevelSrc=0x2222" \
--no-sli --connected-monitor="DFP-0" -o /etc/X11/xorg.conf

sudo sed -i '/Driver/a Option "Interactive" "False"' /etc/X11/xorg.conf
~~~
