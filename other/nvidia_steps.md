For install via the normal package system:

```
$ apt install nvidia-driver-390
$ sudo apt install nvidia-cuda-toolkit
```

Also needed (maybe?) to comment out udev rule

```
chris@xyz:~$ cat /etc/udev/rules.d/pci_pm.rules 
# NVidia card
# ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{device}=="0x1c8d", ATTR{power/control}="auto"
```

Alternatively for the latest, follow actions from https://developer.nvidia.com, in particular:
https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1804&target_type=deblocal

```
$ wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64

$ sudo dpkg -i cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64.deb
$ sudo apt-key add /var/cuda-repo-<version>/7fa2af80.pub
$ sudo apt-get update
$ sudo apt-get install cuda
```

This will install nvidia-410 drivers which are more recent than the versions in
the official ubuntu repo...

Download CUDNN

```
$ sudo dpkg -i libcudnn7_7.4.1.5-1+cuda10.0_amd64.deb
$ sudo dpkg -i libcudnn7-dev_7.4.1.5-1+cuda10.0_amd64.deb 
```
