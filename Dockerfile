#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Nginx WebServer
#
# Made by MAxim Ivanov  19-October-2024
#---------------------------------------------------------------------------
# Используем официальный образ Nginx в качестве базового
FROM nginx:latest

# Указываем рабочую директорию
WORKDIR /usr/share/nginx/html

# Копируем файлы сайта в рабочую директорию
COPY . /usr/share/nginx/html

# Экспонируем порт 80
EXPOSE 80

# Команда по умолчанию для запуска Nginx
CMD ["nginx", "-g", "daemon off;"]