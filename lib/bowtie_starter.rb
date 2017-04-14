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

    command :jekyll do |c|
      c.syntax = 'bowtie_starter jekyll [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Jekyll
      end
    end

    command :jekyll-react do |c|
      c.syntax = 'bowtie_starter jekyll-react [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Jekyll-react
      end
    end

    command :hexo do |c|
      c.syntax = 'bowtie_starter hexo [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Hexo
      end
    end

    command :hugo do |c|
      c.syntax = 'bowtie_starter hugo [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::Hugo
      end
    end

    command :react-spa do |c|
      c.syntax = 'bowtie_starter react-spa [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        # Do something or c.when_called Bowtie_starter::Commands::React-spa
      end
    end

    command :react-native do |c|
      c.syntax = 'bowtie_starter react-native [options]'
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
