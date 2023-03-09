sudo apt-get install openjdk-8-jdk
rustup target add armv7-linux-androideabi
rustup target add aarch64-linux-android
rustup target add i686-linux-android
rustup target add x86_64-linux-android

# create a folder for all the android pre-requisites stuff
mkdir android

cd android
wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip -q sdk-tools-linux-4333796.zip
rm sdk-tools-linux-4333796.zip
tools/bind/sdkmanager "platform-tools"
tools/bin/sdkmanager "platforms;android-29"
tools/bin/sdkmanager "build-tools;29.0.0"
tools/bin/sdkmanager --update

wget -q https://dl.google.com/android/repository/android-ndk-r25b-linux.zip
unzip -q android-ndk-r25b-linux.zip
rm android-ndk-r25-linux-x86_64.zip

cargo install cargo-quad-apk

export ANDROID_HOME=./android
export NDK_HOME=./android-ndk-r25

# for a debug build
cargo quad-apk build
# for a release build
cargo quad-apk build --release