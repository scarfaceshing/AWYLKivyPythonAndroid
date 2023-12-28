FROM python:3-alpine

RUN adduser -D kivy

RUN pip install buildozer

RUN apk add git zip unzip openjdk17-jdk cython wget

USER kivy

CMD ["buildozer", "-v", "android", "debug"]
# CMD ["buildozer", "serve"]