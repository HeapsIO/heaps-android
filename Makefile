.PHONY: all init build install clean heaps-world

all: build install

init:
ifeq ($(OS),Windows_NT)
	choco install haxe openal ffmpeg android-sdk android-ndk
else ifeq ($(shell uname -s),Darwin)
	brew install haxe
	brew bundle install --file hashlink/Brewfile --no-lock
	brew cask install android-studio
	chmod u+x /Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/gradle/wrapper/gradlew
endif
	make -C hashlink
	make install -C hashlink
	haxelib setup /usr/local/lib/haxe/lib
	make gen-local

build:
	CMD=buildDebug make gradle
	CMD=assembleDebug make gradle

install:
	adb install heaps-android-app/heapsapp/build/outputs/apk/debug/heapsapp-debug.apk

clean:
	CMD=clean make gradle

ifeq ($(OS),Windows_NT)
gradle:
	cd heaps-android-app && gradlew.bat $(CMD)
gen-local:
	(echo sdk.dir=C:\\Android\\android-sdk&& echo ndk.dir=C:\\Android\\android-ndk-r21d) > heaps-android-app/local.properties
else ifeq ($(shell uname -s),Darwin)
gradle:
	/Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/gradle/wrapper/gradlew $(CMD) -p heaps-android-app
gen-local:
	echo "sdk.dir=$(HOME)/Library/Android/sdk" > heaps-android-app/local.properties
endif

heaps-world: heaps-world-hl heaps-world-pak

heaps-world-hl:
	cd heaps/samples && haxelib install --always ../../config/main.hxml && haxe -hl ../../out/main.c ../../config/main.hxml

heaps-world-pak:
	cd heaps/samples && haxe -hl ../../out/pak.hl ../../config/pak.hxml && hl ../../out/pak.hl -out ../../out/res
