# Java 17 JDK가 설치된 베이스 이미지 사용
FROM eclipse-temurin:17-jdk

# 컨테이너 작업 디렉토리 설정
WORKDIR /app

# 빌드된 JAR 파일 복사
COPY build/libs/*.jar app.jar

# Spring Boot 앱이 사용하는 포트 열기
EXPOSE 8080

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
