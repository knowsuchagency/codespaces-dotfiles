#!/bin/bash

set -exo pipefail

curl https://pyenv.run | bash

cat ./bashrc >> ~/.bashrc
