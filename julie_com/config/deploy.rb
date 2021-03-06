ENV["SPOT_MODE"] = "console"

require File.expand_path("../boot.rb", __FILE__)

require "spontaneous/capistrano"
require "bundler/capistrano"

default_run_options[:pty]   = true

ssh_options[:port]          = 22
ssh_options[:forward_agent] = true

set :application,           "julie.com"
server                      "julie.com", :app, :web, :db, :media
set :user,                  "julie"
set :use_sudo,              false


set :scm,                   "git"
set :repository,            "git@julie.com:spontaneous.git"

set :deploy_to,             "/home/#{fetch(:user)}/spontaneous"

namespace :deploy do
  task :restart, :roles => [:app, :web] do
    run "sv kill /home/#{fetch(:user)}/service/enabled/back"
  end
end
