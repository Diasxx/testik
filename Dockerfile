# ---------- Шаг 1: Сборка проекта ----------
FROM maven:3.9.6-eclipse-temurin-21 AS builder

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем все файлы проекта в контейнер
COPY . .

# Собираем .jar файл без тестов
RUN mvn clean package -DskipTests


# ---------- Шаг 2: Запуск приложения ----------
FROM eclipse-temurin:21-jdk

# Копируем собранный .jar файл из builder
COPY --from=builder /app/target/deploy-0.0.1-SNAPSHOT.jar app.jar

# Открываем порт (Render сам подставит значение переменной PORT)
EXPOSE 8080

# Запускаем Spring Boot приложение
ENTRYPOINT ["java", "-jar", "/app.jar"]
