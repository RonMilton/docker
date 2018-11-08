
REM Build the docker image
docker build --rm -t project/agent:latest -f docker/printagent/Dockerfile .

REM Run the container and use jekyll to dist artifacts.
docker run ^
-v %cd%:/var/code ^
-a stdout ^
-i ^
--rm ^
--workdir /var/code ^
--entrypoint /var/code/scripts/print_project.sh ^
project/agent /var/code/docs/scripts/print_project.sh
