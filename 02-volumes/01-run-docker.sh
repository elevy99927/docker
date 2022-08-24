docker run -ti --name web_api -v "$(pwd)/source":/app -p 8080:8080 java:openjdk-8-jre-alpine java -jar -Dspring.profiles.active=none  /app/spring-music.jar
