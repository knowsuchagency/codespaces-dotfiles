#!/bin/bash

set -exo pipefail

ln -l ./bash_aliases ~/.bash_aliases

curl https://pyenv.run | bash
