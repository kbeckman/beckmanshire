#!/bin/bash

function rails-project-update
{
  bundle install

  echo "Running DB preparation tasks..."
  RAILS_ENV=test bundle exec rake cassandra:migrate
  bundle exec rake db:migrate db:seed db:test:prepare

  echo "Running rake deployment:run_ordered_tasks..."
  bundle exec rake deployment:run_ordered_tasks
}
alias rpu='rails-project-update'


function create-osx-install-disk
{
  installer=/Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia
  appPath=/Applications/Install\ OS\ X\ El\ Capitan.app
  volume=/Volumes/Install\ OS\ X\ El\ Capitan

  caffeinate -im sudo $installer --volume $volume --applicationpath $appPath --nointeraction
}

