:: Build and create new image from .dockerfile. If no dockerfile path is specified, then uses default behavior (PATH/dockerfile). ::
@ECHO OFF
:: Dir to dockerfile
SET dockerfile="Dockerfile"
:: Can be any name.
SET imageName="dockerdev"
:: Any directory
SET contextPath="."

docker build -f %dockerfile% -t %imageName% %contextPath% || ECHO Operation failed. See above for details. & PAUSE