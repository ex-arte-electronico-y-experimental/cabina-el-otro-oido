#!/bin/bash

# descargar modelo entrenado:
if [ ! -d ./models ]; then
	rm -rf models && mkdir models && cd ./models && \
	curl -O https://models.silero.ai/models/es/es_v1_jit.model && cd ..;
fi

# configurar un entorno de Python aislado:
if [ ! -d ./.venv ]; then
	python3 -m venv ./.venv && source .venv/bin/activate && \
	pip3 install --upgrade pip && pip3 install -r requirements.txt;
fi

# activar entorno si las demás condiciones se cumplen (e.g. ejecutadas previamente):
source .venv/bin/activate