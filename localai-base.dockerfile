FROM localai/localai:latest-gpu-nvidia-cuda-13
ENV MAX_ACTIVE_BACKENDS=2

RUN ./local-ai backends install llama-cpp