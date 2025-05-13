# Compressonator in Docker

Purpose of this Docker Image is to run [Compressonator](https://github.com/GPUOpen-Tools/compressonator) on the Mac. Works also on Apple Silicon.

---

### Build docker image
Since compressonator for linux is only available for the AMD64 platform, we create an image to emulate this.
```
docker build -t compressonator --platform linux/amd64 https://github.com/redvery/compressonator.git
```

### Start temporary container to execute compressonator
```
docker run -it --rm --platform linux/amd64 -v "$(pwd):/data" compressonator <PARAMETERS>
docker run -it --rm --platform linux/amd64 -v "$(pwd):/data" compressonator -fd DXT5 circle.png circle.dds
```
Parameters can be anything you would normally pass to compressonator when it is locally installed.

---

## Convenience script

### Place compressonator script in any suitable bin folder
```
mkdir -p ~/bin
cp compressonator ~/bin
chmod +x ~/bin/compressonator
```

### Usage
To encode the image `circle.png` to `circle.dds` in `DXT5` format use the following command:
```
compressonator -fd DXT5 circle.png circle.dds
```


