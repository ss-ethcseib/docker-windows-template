:: Spin up a new Docker container ::
@ECHO OFF
:: Image name
set imageName="dockerdev"
docker run -dit %imageName% bash & ECHO Successfully created container using image %imageName%. Use 'attach' to connect to container object.