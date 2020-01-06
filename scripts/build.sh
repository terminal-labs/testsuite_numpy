eval "vagrant up"
eval "vagrant ssh --command 'cd /vagrant; sudo bash scripts/install_deps.sh'"
eval "vagrant ssh --command 'cd /vagrant; sudo bash scripts/install_compiler_deps.sh'"
eval "vagrant ssh --command 'cd /vagrant; sudo bash scripts/setup_python.sh'"
