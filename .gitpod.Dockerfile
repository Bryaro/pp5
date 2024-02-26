FROM gitpod/workspace-full

USER root

# Install Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

USER gitpod
