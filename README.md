### Flutter version
Flutter 3.32.0 • channel stable • https://github.com/flutter/flutter.git
Framework • revision be698c48a6 (3 месяца назад)
Engine • revision 1881800949 (3 месяца назад)
Tools • Dart 3.8.0 • DevTools 2.45.1

### Build docker image 
## at mac os m2
export DOCKER_DEFAULT_PLATFORM=linux/amd64

docker build -t calca_v0.5 .
docker save -o calca.tar calca-v0.5
scp -i ~/.ssh/217.18.62.204  calca_v0.5.2.tar root@217.18.62.204:/home/calca_v0.5.2.tar
docker load -i calca_v0.5.2.tar
### Macos build
flutter build macos --release --dart-define-from-file=env/production.json

