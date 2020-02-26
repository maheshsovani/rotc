brew install kubectl
brew cask install minikube
eval $(minikube docker-env)
docker pull openjdk
docker pull openjdk:slim
docker pull openjdk:alpine
docker pull mongo
$repo="https://github.com/boot-services/metadata-service.git"
git clone $repo
cd metadata-service
brew cask install java
brew install maven
mvn clean test
mvn spring-boot:run
curl http://localhost:8080/actuator/info
