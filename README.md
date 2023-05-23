# AWYLKivyPythonAndroid 

(INSTALLATION AND SETUP FOR ARCH LINUX ONLY)

# REQUIREMENTS

- Android Studio
- Python3
- emulator create avd

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

# DEBUGGING

```
buildozer -v android debug // to build android apk
buildozer serve // run serve host to download from local address the apk
```

# run emulator AVD

```
emulator -list-avds // check emulator available
emulator -avd Pixel_XL_API_33 // <-- emulator -avd ${emulator name}
```

# RUN to the running emulator with adb

```
adb devices // <-- check emulator address running
adb -s emulator-5554 install .buildozer/android/platform/build-arm64-v8a_armeabi-v7a/dists/main/build/outputs/apk/debug/main-debug.apk // <-- adb -s ${emulator address running} install ${path debug.apk}
```
