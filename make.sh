#!/bin/sh
cd ESBreaker.Debug
echo Making patch
mono ESBreakerCLI.exe > /dev/null
echo Waiting for android device
adb wait-for-device
adb push output/. /storage/emulated/0/Android/data/com.sega.PhantasyStarOnline2es/files/3hwQzp8KE9T1oTpJCHPvxI5JIedD3AuT/
adb shell am start -S com.sega.PhantasyStarOnline2es/.PSO2esUnityActivity
