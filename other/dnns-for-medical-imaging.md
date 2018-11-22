# Deep Neural Net Toolkit Tutorial

Notes on Deep Neural networks toolkits, prepared for the
[2018 CAI Deep Learning Workshop](https://docs.google.com/document/d/1GIyGuNszik1dbG6bNSVXUgAHFRDZHdDWfOn3vxm6PVk)

## Audience and Format

Audience: PhD students and Postdocs, mostly CAI QBI TRI QIMR – so assume basic
programming skills in one language and skill to transfer this to another
language and linear algebra basics.

# Format

* This is a **tutorial**; it seeks to mostly *show* rather than *explain*.
  See <https://www.divio.com/blog/documentation>.
* I'm new to these, so this may be the only 

Tutorial Goal: get one small, simple model running in each of
* Keras - python; easy
* TensorFlow - dataflow; scalable
* Flux - flexibility; cool new thing

The model (1):
* Variational Autoencoder
* MSE loss because that's easiest

Dataset:
* [MNIST](https://en.wikipedia.org/wiki/MNIST_database) just because it's easy?

The model (2):
* Use it to generate features which can train a shallow classifier on a very
  small dataset discriminate digits from outside the training set. (Rotated?
  Upside down?)


Possible extras:
* NiftiNet? - medical tools
* DLTK ?
* PyTorch / MedicalTorch ?


# Prerequisites

## Python

* Who has used it?

* `conda` is a software *package manager* with a particular focus on packages
  for python scientific computing.
* The Anaconda and MiniConda *python distributions* are handy ways to get and
  use conda.
* Anaconda - a fully feature distribution <https://www.anaconda.com/download>
* Miniconda - minimalistic distribution <https://conda.io/miniconda.html>

See [Conda myths and misconceptions](https://jakevdp.github.io/blog/2016/08/25/conda-myths-and-misconceptions)

I'll focus on miniconda because it's what I use (and installing via scripts
makes things reproducible), but Anaconda has quite a nice a GUI for package
management if you'd like to explore that.

* Download the python 3 miniconda installer from
  <https://conda.io/miniconda.html> and run it. Put it where you like; mine is
  installed into `~/local/miniconda3`.
* For linux users, put the following in your `.bashrc`:
  `source ~/local/miniconda3/etc/profile.d/conda.sh`

## Conda environments

* Create one for your machine learning work
* Activate it

```bash
conda create -n ml
conda activate ml
```

* Environments are great, you can have different python and package versions
  installed on one machine.

## Helpful packages

* Add some helpful packages

```
conda install jupyter matplotlib
```

### Installing CUDA

For modern GPUs, you'll probably want to install CUDA.

Some links about installing tensorflow on ubuntu 18.04

https://medium.com/@naomi.fridman/install-conda-tensorflow-gpu-and-keras-on-ubuntu-18-04-1b403e740e25

https://medium.com/codezillas/step-by-step-guide-to-install-tensorflow-gpu-on-ubuntu-18-04-lts-6feceb0df5c0

On my machine:

```
sudo apt install libcuda1-384
```

To see devices

```
$ ubuntu-drivers devices
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
modalias : pci:v000010DEd00001C8Dsv00001028sd000007BEbc03sc02i00
vendor   : NVIDIA Corporation
model    : GP107M [GeForce GTX 1050 Mobile]
manual_install: True
driver   : nvidia-driver-390 - distro non-free recommended
driver   : xserver-xorg-video-nouveau - distro free builtin
```

```
sudo apt install nvidia-driver-390
```

## Installing tensorflow with GPU support

```
conda create --name tf_gpu tensorflow-gpu
```


## Keras


## Flux

To get Flux:

1. Download julia 1.0.2 from https://julialang.org/downloads, and install
2. Start the julia REPL, type `]` to enter package mode, and then `add Flux` to
   install Flux.
3. Type ``

## TensorFlow

Note: New TF-2.0 API

https://pgaleone.eu/tensorflow/gan/2018/11/04/tensorflow-2-models-migration-and-new-design/


* The second major framework designed by the Google Brain team, publically
  released in Feb 2017.

* A relatively low level toolkit 

## NiftiNet



