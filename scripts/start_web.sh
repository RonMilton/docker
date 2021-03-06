#!/bin/sh

touch ~/.bashrc
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc 

echo "Installing Ruby dependencies..."
cd docs
bundle update
bundle exec jekyll serve -I --increment --force_polling --host 0.0.0.0 --port 4000 --config _config.yml
