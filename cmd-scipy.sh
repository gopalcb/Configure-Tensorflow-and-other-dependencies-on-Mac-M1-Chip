#!/bin/bash

pip uninstall -y numpy pythran
pip install cython pybind11
pip install --no-binary :all: --no-use-pep517 numpy
pip install pythran
brew install openblas gfortran
export OPENBLAS=/opt/homebrew/opt/openblas/lib/
pip install --no-binary :all: --no-use-pep517 scipy


Uninstall home-brew
sudo rm -rf /opt/homebrew/
Install home-brew
