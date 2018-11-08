
@ECHO OFF

REM Build the docker image
REM docker build --rm -t project/agent:latest -f docker/webagent/Dockerfile .

REM Run the container and run the jekyll server for development.
docker run ^
--name project ^
-v %cd%:/var/code ^
--dns=10.255.255.254 ^
--dns=8.8.8.8 ^
-p 4000:4000 ^
--expose 4000 ^
-a stdout ^
-i ^
--rm ^
--workdir /var/code ^
--entrypoint /bin/bash ^
jekyll/jekyll /var/code/scripts/start_web.sh
