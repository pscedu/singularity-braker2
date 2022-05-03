#!/bin/bash

IMAGE=singularity-braker2-2.1.6.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
