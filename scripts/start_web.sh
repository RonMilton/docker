#!/bin/bash


# echo "Installing dita-ot plugins..."
# cp -R ./project/dita/plugins/* /tmp/dita-ot/plugins/ && dita --install

echo "Installing Ruby dependencies..."
cd docs
gem install jekyll bundler --no-ri --no-rdoc

echo "Serving Jekyll website..."
bundle install --path ../../build/vendor/bundle
bundle exec jekyll serve -I --increment --force_polling --host 0.0.0.0 --port 4000 --config _config.yml
