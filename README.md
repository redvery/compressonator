# Compressonator in Docker

Purpose of this Docker Image is to run Compressonator on Apple Silicon Macs.

---

### Build docker image
Since compressonator for linux is only available for the AMD64 platform, we create an image to emulate this.
```
docker build -t compressonator --platform linux/amd64 .
```

### Start temporary container to execute compressonator
```
docker run -it --rm --platform linux/amd64 -v $(pwd):/data compressonator <PARAMETERS>
docker run -it --rm --platform linux/amd64 -v $(pwd):/data compressonator -fd DXT5 circle.png circle.dds
```
Parameters can be anything you would normally pass to compressonator when it is locally installed.

---

## Convenince scripts

### Place makedxt5 script in bin folder
```
cp makedxt5 /Users/user/bin
```

### Usage
To encode an image 'circle.png' to 'circle.dds' in DXT5 format use the following command:
```
makedxt5 circle.png
```


