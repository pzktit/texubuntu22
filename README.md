# texubuntu22

Build script for Docker image with TexLive full installation found in Ubuntu 22.04.
The container image is assumed to be used as DevContainer with Visual Studio Code.
The sample configuration is provided in the `sample` folder.
Please note that `ltex-ls` is incorporated at the container build process. Rebuild may be required if LTeX switches to the newer version of this utility. The ready use image can be pulled form Docker Hub

```bash
docker pull pzawad/texubuntu22
```

