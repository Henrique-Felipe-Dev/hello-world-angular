# Use um servidor HTTP simples para servir a aplicação
FROM nginx:alpine

# Copie os arquivos de origem da aplicação para o contêiner
COPY . .
 
# Copie os arquivos de build do Angular para o diretório de conteúdo do servidor web
COPY /dist/hello-world/browser /usr/share/nginx/html
 
COPY /nginx.conf  /etc/nginx/conf.d/default.conf
 
# Exponha a porta em que o servidor HTTP do Nginx está ouvindo
EXPOSE 80
 
# Inicie o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
