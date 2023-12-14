FROM mcr.microsoft.com/devcontainers/ruby

WORKDIR /workspace/frontend

COPY frontend/package.json ./
COPY frontend/yarn.lock ./

RUN bash -c "source /usr/local/share/nvm/nvm.sh && nvm install stable && nvm alias default stable"

RUN yarn install
