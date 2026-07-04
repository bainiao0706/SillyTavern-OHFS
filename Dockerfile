FROM node:18-alpine

# 安装必要的工具
RUN apk add --no-cache git shadow

# 克隆酒馆的代码
RUN git clone https://github.com/SillyTavern/SillyTavern.git /app

WORKDIR /app

# 安装依赖
RUN npm install --only=production

ENV BACKGROUND_COLOR=black
ENV NODE_ENV=production

# 写入配置，使用时修改用户名和密码
RUN printf "port: 7860\n\
listen: true\n\
whitelistMode: false\n\
basicAuthMode: true\n\
basicAuthUser:\n\
  username: \"用户名\"\n\  
  password: \"密码\"\n\   
trustProxy: true\n" > config.yaml

# 暴露 7860 端口
EXPOSE 7860

# 酒馆，启动！
CMD ["node", "server.js"]