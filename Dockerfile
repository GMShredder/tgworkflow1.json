FROM runpod/worker-comfyui:5.5.1-base

# Download checkpoint
RUN wget -q --content-disposition -e robots=off \
  --header="Authorization: Bearer e4c4b49a60631eb637dba08ccab73dbf" \
  "https://civitai.com/api/download/models/2741698" \
  -O /comfyui/models/checkpoints/NovaAnimeILV17.safetensors

# Download LoRAs
RUN wget -q --content-disposition -e robots=off \
  --header="Authorization: Bearer e4c4b49a60631eb637dba08ccab73dbf" \
  "https://civitai.com/api/download/models/1983243" \
  -O /comfyui/models/loras/Detail_enhancer_IL_v2.safetensors

RUN wget -q --content-disposition -e robots=off \
  --header="Authorization: Bearer e4c4b49a60631eb637dba08ccab73dbf" \
  "https://civitai.com/api/download/models/1122976" \
  -O /comfyui/models/loras/StS-Illustrious-Detail-Slider-v1.0.safetensors

RUN wget -q --content-disposition -e robots=off \
  --header="Authorization: Bearer e4c4b49a60631eb637dba08ccab73dbf" \
  "https://civitai.com/api/download/models/1963644" \
  -O /comfyui/models/loras/AddMicroDetails_Illustrious_v5.safetensors
