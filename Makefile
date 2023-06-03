.RECIPEPREFIX = >

# Variables
# export BUILD_DIR  ?= build

all: download-source build-container

dev: download-source build-dev

download-source:
> ./scripts/download-sources.sh

build-container:
> apptainer build --fakeroot openfoam.sif openfoam.def

build-dev:
> apptainer build --fakeroot --sandbox openfoam.simg openfoam.def
