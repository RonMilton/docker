#!/bin/bash
export JEKYLL_ENV=production

echo "Installing dita-ot plugins..."
cp -R ./dita/plugins/* /tmp/dita-ot/plugins
dita --install

echo "Installing Ruby dependencies..."
gem install jekyll bundler --no-ri --no-rdoc

echo "Generating project website..."
cd src
bundle install --path ../build/vendor/bundle

echo "Generating PDF maps..."

# Generate the PDF maps first
bundle exec jekyll build --config _pdfconfig.yml

echo "Generating PDFs..."
# Then generate the actual PDFs
cd ../
dita -i build/_pdf/project-pdf.html -f rm-pdf -o dist/deliverable/
