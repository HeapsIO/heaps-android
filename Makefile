.PHONY: all init build install clean heaps-world

all: build install

ifeq ($(OS),Windows_NT)
init: init-windows init-root
endif
ifeq ($(shell uname -s),Darwin)
init: init-darwin init-root
endif

init-root:
	make -C hashlink
	make install -C hashlink
	haxelib setup /usr/local/lib/haxe/lib

init-windows:
	choco install haxe openal ffmpeg android-sdk

init-darwin:
	brew install haxe
	brew bundle install --file hashlink/Brewfile --no-lock
	brew cask install android-studio

build:
	/Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/gradle/wrapper/gradlew build -p heaps-android-app

install:
	adb install heaps-android-app/heapsapp/build/outputs/apk/debug/heapsapp-debug.apk

clean:
	/Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/gradle/wrapper/gradlew clean -p heaps-android-app

heaps-world: heaps-world-hl heaps-world-pak

heaps-world-hl:
	cd heaps/samples && haxelib install --always ../../config/main.hxml && haxe -hl ../../out/main.c ../../config/main.hxml

heaps-world-pak:
	cd heaps/samples && haxe -hl ../../out/pak.hl ../../config/pak.hxml && hl ../../out/pak.hl -out ../../out/res
