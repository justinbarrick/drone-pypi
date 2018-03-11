#!/bin/sh

cat << EOF > ~/.pypyirc
[distutils]
index-servers = pypi

[pypi]
repository=${PYPI_REPOSTORY:-https://pypi.python.org/pypi}
username=$PYPI_USERNAME
password=$PYPI_PASSWORD
EOF

chmod 0600 ~/.pypyirc
python setup.py sdist upload -r pypi
