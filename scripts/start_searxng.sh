#! /bin/bash
__conda_setup="$('/home/taozuinuc/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/taozuinuc/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/taozuinuc/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/taozuinuc/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda activate searxng
cd /home/taozuinuc/github/searxng
export PYTHONPATH=/home/taozuinuc/github/searxng
#export ENV_FOR_DYNACONF=nuc
echo `which python`
python searx/webapp.py
