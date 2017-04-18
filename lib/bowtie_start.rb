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
          %x(brew update && brew install hugo && npm install -g hexo)
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
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          %x(hexo init #{ARGV[1]})
        end
      end

      command :hugo do |c|
        c.syntax = 'bts hugo <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started Hugo Project"
        end
      end

      command :react_spa do |c|
        c.syntax = 'bts react-spa <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started React SPA Project"
        end
      end

      command :react_native do |c|
        c.syntax = 'bts react-native <project_name>'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started react_native"
        end
      end

      run!
    end
  end
end

