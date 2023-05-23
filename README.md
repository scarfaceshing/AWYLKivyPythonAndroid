# AWYLKivyPythonAndroid 

(INSTALLATION AND SETUP FOR ARCH LINUX ONLY)

# REQUIREMENTS

- Android Studio
- Python3

# INSTALLATION
```
python -m pip install --upgrade pip setuptools virtualenv
pip3 install --user --upgrade buildozer 
pacman -Sy zip unzip openjdk-17-jdk
```
# PATH

(modify ~/.bashrc)

```
export LOCAL_BIN=~/.local/bin
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
export PATH=$PATH:$LOCAL_BIN:$JAVA_HOME/bin:$JAVA_HOME
```

# CONFIGURATION
(modify buildozer.spec)
```
android.sdk_path = ~/Android/Sdk
```
