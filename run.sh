#!/bin/sh

cat << EOF > ~/.pypirc
[distutils]
index-servers = pypi

[pypi]
repository=${PYPI_REPOSTORY:-https://pypi.python.org/pypi}
username=$PYPI_USERNAME
password=$PYPI_PASSWORD
EOF

chmod 0600 ~/.pypirc
python setup.py sdist upload -r pypi
