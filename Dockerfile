FROM node:18.15.0
WORKDIR /home/workspace
RUN git clone https://github.com/programmerJuni/final-frontend.git
RUN git pull origin master

WORKDIR /home/workspace/final-frontend/frontend
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent
RUN npm run build

WORKDIR /home/workspace/final-frontend
RUN npm install --silent

EXPOSE 5000

CMD ["npm", "start"]