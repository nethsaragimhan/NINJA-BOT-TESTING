FROM aquabotwa/sanuwa-official:beta 

RUN git clone https://github.com/nethsaragimhan/NINJA-BOT-TESTING /root/NINJA-BOT-TESTING
WORKDIR /root/NINJA-BOT-TESTING
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
