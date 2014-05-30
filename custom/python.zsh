# enable pyenv
if which pyenv 1>/dev/null; then
    export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
    eval "$(pyenv init -)"
fi
