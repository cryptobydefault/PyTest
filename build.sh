#!/bin/bash

PYENV_HOME=$WORKSPACE/.pyenv

if [ -d $PYENV_HOME ]; then
	rm -rf $PYENV_HOME
fi

virtualenv --no-site-packages $PYENV_HOME
. $PYENV_HOME/bin/activate
pip install --quiet nosexcover
