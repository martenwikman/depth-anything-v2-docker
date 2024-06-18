FROM nvcr.io/nvidia/cuda:11.8.0-runtime-ubuntu22.04
RUN apt update && apt install -y wget git python3-pip libglib2.0-0 libgl1 git-lfs
RUN git clone https://huggingface.co/spaces/depth-anything/Depth-Anything-V2 && \
git lfs install && \
git clone https://huggingface.co/depth-anything/Depth-Anything-V2-Large && \
git clone https://huggingface.co/depth-anything/Depth-Anything-V2-Small && \
git clone https://huggingface.co/depth-anything/Depth-Anything-V2-Base
RUN cd Depth-Anything-V2 && pip install -r requirements.txt
RUN mkdir Depth-Anything-V2/checkpoints && \ 
mv Depth-Anything-V2-Base/depth_anything_v2_vitb.pth Depth-Anything-V2/checkpoints/ && \
mv Depth-Anything-V2-Small/depth_anything_v2_vits.pth Depth-Anything-V2/checkpoints/ && \
mv Depth-Anything-V2-Large/depth_anything_v2_vitl.pth Depth-Anything-V2/checkpoints/ &&  \
rm -rf Depth-Anything-V2-Base && \
rm -rf Depth-Anything-V2-Small && \
rm -rf Depth-Anything-V2-Large