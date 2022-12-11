.PHONY: prepare
prepare:
	cd ios; rm -rf ./Pods; pod install;

.PHONY: secret
secret:
	echo $FILE_FIREBASE_ANDROID_PRODUCTION | base64 -D > android/app/google-services.json
	echo $FILE_FIREBASE_IOS_DEVELOPMENT | base64 -D > ios/Runner/GoogleService-Info-debug.plist
	echo $FILE_FIREBASE_IOS_PRODUCTION | base64 -D > ios/Runner/GoogleService-Info-release.plist
	./scripts/secret/key_properties.sh

.PHONY: generate
generate:
	flutter pub run build_runner build --delete-conflicting-outputs