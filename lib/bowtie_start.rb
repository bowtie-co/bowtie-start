#!/usr/bin/env ruby

require 'rubygems'
require 'commander'

module BowtieStart
  class Runner
    include Commander::Methods
    # include whatever modules you need

    def run
      program :name, 'bowtie_starter'
      program :version, '0.0.1'
      program :description, '

  =====================
|                       |
|      \        /       |
|     |  \    /  |      |
|     ||\  \/  /||      |
|     || \    / ||      |
|     ||/  /\  \||      |
|     |  /    \  |      |
|      /        \|      |
|                       |
  =====================

     Bowtie Starter
      -----------

     Ship, you fuck.
      '
      default_command :help

      command :install_dependencies do |c|
        c.syntax = 'bts install_dependencies'
        c.summary = 'Installs hugo, hexo.'
        c.description = ''
        c.example 'description', 'bts install_dependencies'
        c.action do |args, options|
          %x(brew update && brew install hugo && npm install -g hexo-cli)
        end
      end
      command :jekyll do |c|
        c.syntax = 'bts jekyll <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          %x(git clone git@github.com:igolden/jekyll-start #{ARGV[1]})
        end
      end

      command :jekyll_react do |c|
        c.syntax = 'bts jekyll-react <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          %x(git clone git@github.com:igolden/jekyll-react #{ARGV[1]})
        end
      end

      command :hexo do |c|
        c.syntax = 'bts hexo <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.action do |args, options|
          ARGV[1].nil? ? (puts "Please specify a project dir. ex: 'bts hexo hello_world_project'")  : (%x(hexo init #{ARGV[1]}))
        end
      end

      command :hugo do |c|
        c.syntax = 'bts hugo <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          ARGV[1].nil? ? (puts "Please specify a project dir. ex: 'bts hugo hello_world_project'")  : (%x(hugo new site #{ARGV[1]}))
        end
      end

      command :react_spa do |c|
        c.syntax = 'bts react-spa <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          %x(git clone git@github.com:davezuko/react-redux-starter-kit.git #{ARGV[1]})
        end
      end

      command :react_native do |c|
        c.syntax = 'bts react-native <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          ARGV[1].nil? ? (puts "Please specify a project dir. ex: 'bts react_native hello_world_project'")  : (%x(react-native init #{ARGV[1]}))
        end
      end

      run!
    end
  end
end

