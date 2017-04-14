#!/usr/bin/env ruby

require 'rubygems'
require 'commander'

class BowtieStarter
  include Commander::Methods
  # include whatever modules you need

  def run
    program :name, 'bowtie_starter'
    program :version, '0.0.1'
    program :description, 'A CLI for starting projects faster @bowtie.'
    default_command :help

    command :jekyll do |c|
      c.syntax = 'bts jekyll [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Jekyll
      end
    end

    command :jekyll_react do |c|
      c.syntax = 'bts jekyll-react [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Jekyll-react
      end
    end

    command :hexo do |c|
      c.syntax = 'bts hexo [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Hexo
      end
    end

    command :hugo do |c|
      c.syntax = 'bts hugo [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Hugo
      end
    end

    command :react_spa do |c|
      c.syntax = 'bts react-spa [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::React-spa
      end
    end

    command :react_native do |c|
      c.syntax = 'bts react-native [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::React-native
      end
    end

    run!
  end
end

BowtieStarter.new.run if $0 == __FILE__
