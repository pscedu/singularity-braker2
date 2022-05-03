#!/bin/bash

IMAGE=singularity-funannotate-1.8.9.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
