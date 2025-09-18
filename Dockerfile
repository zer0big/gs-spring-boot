FROM openjdk:11-jdk-slim

# Dockerfile이 실행되는 작업 디렉토리 설정
WORKDIR /app

# 빌드된 JAR 파일을 /app 디렉토리로 복사
COPY target/gs-spring-boot-0.1.0.jar /app/app.jar

# 애플리케이션이 80번 포트에서 리스닝함을 알림
EXPOSE 80

# 컨테이너 시작 시 실행될 명령
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
