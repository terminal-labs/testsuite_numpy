wget https://www.python.org/ftp/python/3.4.10/Python-3.4.10.tgz
tar -xvzf Python-3.4.10.tgz
chmod 777 Python-3.4.10
cd Python-3.4.10
./configure --with-ssl --with-zlib --with-ensurepip --prefix=/usr/local/
make
make altinstall
virtualenv --python=python3.4 --clear --always-copy --setuptools venv
source venv/bin/activate
pip install --upgrade setuptools
pip install --upgrade pip
