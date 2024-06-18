# Depth anything v2 docker image

## Get started

Build docker image 

```c
 docker build -t depth-anything-v2 .
```


## Run

```c
docker run --gpus all -it --rm -v $PWD/data:/container_dir depth-anything-v2:latest
```



## Generate depth 

Use either `run.py` or `run_video.py`