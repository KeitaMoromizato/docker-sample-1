FROM node:6.9.1

ENV HOME=/home/app

COPY app.js $HOME/
WORKDIR $HOME

CMD ["node", "app.js"]
