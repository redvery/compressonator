# Compressonator in Docker

### Build docker image
Since compressonator for linux is only available for the AMD64 platform, we create an image to emulate this.
```
docker build -t compressonator --platform linux/amd64 .
```

### Place makedxt5 script in bin folder
```
cp makedxt5 /Users/user/bin
```

### Usage
To encode an image 'circle.png' to 'circle.dds' use the following command:
```
makedxt5 circle.png
```

#### References
This is what happens behind the scenes:
```
docker run -it --rm --platform linux/amd64 -v $(pwd):/data compressonator -fd DXT5 circle.png circle.dds
```


