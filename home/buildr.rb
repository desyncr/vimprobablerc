#!/usr/bin/ruby
require 'thor'
require 'yaml'
require 'erb'

class Buildr < Thor
  include Thor::Actions
  class_option :home, :default => 'home.yml'
  class_option :stylesheet, :default => 'stylesheet.css'
  class_option :template, :default => 'template.html.erb'
  class_option :search, :default => 'search.html.erb'

  desc 'build', 'Build static home page'
  def build

    home = YAML.load_file(options[:home])
    stylesheet = File.new(options[:stylesheet], 'r').read

    template = File.new(options[:template], 'r').read
    search = File.new(options[:search], 'r').read
    print ERB.new(template).result(binding)

  end

end

Buildr.start(ARGV)
