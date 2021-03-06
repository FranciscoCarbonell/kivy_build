# Build kivy app to android

### Test:
* xubuntu 20.04
* python 3.6
* buildozer 1.2.0
* cython 0.29.6

shouldn't have a problem on other distributions like ubuntu.

#### errors that usually appear

* ImportError: No module named '_ctypes'
 * install libffi-dev (xubuntu,ubuntu) or libffi-devel (fedora,centos)
* '_env' should be a dictionary 
 * replace file recipe.py and build.py (temporary error)
 * from your project `.buildozer/android/platform/python-for-android/pythonforandroid/`
 
 #### add to .bashrc
 
* export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
* export WORKON_HOME=$HOME/.virtualenvs
* export VIRTUALENVWRAPPER_VIRTUALENV=/home/YOUR_USERNAME/.local/bin/virtualenv
* source /home/YOUR_USERNAME/.local/bin/virtualenvwrapper.sh

 
#### important

* try not to have multiple versions of buildozer
* try not to have multiple versions of cython
* try using a python version 3.6 or higher
* if there is an error when compiling, check that everything in the install.sh file is installed
* if you install any library after trying to compile it is best to run *buildozer android dlean* in case of compiling for android
* if you get any ssl error install with pip pyssl and pyopenssl

#### step

* sudo add-apt-repository ppa:deadsnakes/ppa
* sudo sh install.sh
* sudo apt install python3.6
* sudo python3.6 -m pip install virtualenvwrapper
* source ~/.bashrc
* mkvirtualenv kivy-test
* workon kivy-test
* pip install cython==0.29.6
* pip install pyopenssl
* pip install pyssl
* pip install buildozer
* (from your project) buildozer init
* buildozer android debug deploy run (run only if you have connected a device)

### info

* debug android app
 * android.logcat_filters = *:S python:D (buildozer.spec)
 * connect you device to pc
 * adb logcat *:S python:D
