#!/usr/bin/env bash
set -o errexit

echo "=== STARTING RENDER BUILD ==="
echo "Current directory: $(pwd)"
echo "Ruby version: $(ruby -v)"
echo "Bundler version: $(bundle -v)"

# Paso 1: Bundle install con verbose
echo "=== STEP 1: BUNDLE INSTALL ==="
bundle install --verbose

# Paso 2: Precompilar assets CON --trace
echo "=== STEP 2: ASSETS PRECOMPILE ==="
bundle exec rails assets:precompile RAILS_ENV=production --trace

echo "=== BUILD COMPLETED SUCCESSFULLY ==="