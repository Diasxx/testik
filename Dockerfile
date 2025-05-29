# Используем официальный образ JDK 21
FROM eclipse-temurin:21-jdk

# Указываем, что jar-файл будет собран в папке target
ARG JAR_FILE=target/*.jar

# Копируем jar в образ
COPY ${JAR_FILE} app.jar

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "/app.jar"]
