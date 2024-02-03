FROM mcr.microsoft.com/devcontainers/ruby:3.2

# frontend
WORKDIR /workspace/frontend

COPY frontend/package.json ./
COPY frontend/yarn.lock ./

RUN bash -c "source /usr/local/share/nvm/nvm.sh && nvm install stable && nvm alias default stable"

RUN yarn install

# backend
WORKDIR /workspace/backend

COPY backend/Gemfile /workspace/backend/Gemfile
COPY backend/Gemfile.lock /workspace/backend/Gemfile.lock

RUN bundle install

COPY backend /workspace/backend
