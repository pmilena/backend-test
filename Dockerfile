# Use a imagem oficial do OpenJDK 17
FROM openjdk:17-jdk-slim

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o artefato .jar gerado para dentro do container
COPY target/api-0.0.1-SNAPSHOT.jar /app/api.jar

# Comando para rodar a aplicação Java no container
CMD ["java", "-jar", "api.jar"]

