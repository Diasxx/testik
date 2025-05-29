# Используем официальный JDK 21
FROM eclipse-temurin:21-jdk

# Указываем путь к .jar файлу (build должен быть выполнен до этого!)
ARG JAR_FILE=target/deploy-0.0.1-SNAPSHOT.jar

# Копируем .jar файл внутрь контейнера
COPY ${JAR_FILE} app.jar

# Указываем команду запуска приложения
ENTRYPOINT ["java", "-jar", "/app.jar"]
