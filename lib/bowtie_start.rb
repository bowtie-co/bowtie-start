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

      command :jekyll do |c|
        c.syntax = 'bts jekyll [options]'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started Jekyll Project"
        end
      end

      command :jekyll_react do |c|
        c.syntax = 'bts jekyll-react [options]'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started Jekyll-React Project"
        end
      end

      command :hexo do |c|
        c.syntax = 'bts hexo [options]'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started Hexo Project"
        end
      end

      command :hugo do |c|
        c.syntax = 'bts hugo [options]'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started Hugo Project"
        end
      end

      command :react_spa do |c|
        c.syntax = 'bts react-spa [options]'
        c.summary = ''
        c.description = ''
        c.example 'description', 'command example'
        c.option '--some-switch', 'Some switch that does something'
        c.action do |args, options|
          puts "Started React SPA Project"
        end
      end

      command :react_native do |c|
        c.syntax = 'bts react-native [options]'
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

