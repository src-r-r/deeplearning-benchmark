#!/bin/bash
NAME_NGC=${NAME_NGC:-pytorch:22.10-py3}
HERE=${CWD:-$(pwd)}

HERE=$(realpath ${HERE})

cd ${HERE}

echo "---------------------------------------------------"
echo "Pull Docker Image: "
echo "---------------------------------------------------"
docker pull nvcr.io/nvidia/${NAME_NGC}


echo "---------------------------------------------------"
echo "Clone Repos: "
echo "---------------------------------------------------"
git clone https://github.com/LambdaLabsML/DeepLearningExamples.git && \
cd ${HERE}/DeepLearningExamples && \
git checkout lambda/benchmark && \
cd ..
git clone https://github.com/lambdal/deeplearning-benchmark.git && \
cd ${HERE}/deeplearning-benchmark/pytorch
