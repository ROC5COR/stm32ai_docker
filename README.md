# stm32ai_docker
## How to use ? 
- Git Clone the repo and `cd` into it
- Use `docker build -t stm32ai .` to build a local image named stm32ai
- Run `docker run -it --rm stm32ai /bin/sh` to start the container and open an interactive session into it
- You can use `stm32ai` from anywhere

## How to use with your models ?
- Use docker volume mounting
	- Use `docker run -v /tmp:/models -it --rm stm32ai /bin/sh` to mount a volume /tmp into /models of the container
- Use wget to download you models
	- Use `wget https://github.com/hollance/Forge/raw/master/Examples/MNIST/Training/mnist.h5` to download file from the internet

