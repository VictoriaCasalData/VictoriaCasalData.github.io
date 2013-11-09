require 'erb'
require 'i18n'
require_relative 'lib/compiler'

task :default => [:build]

task :build do
  current_directory = File.dirname(__FILE__)
  I18n.load_path = Dir[File.join(current_directory, 'locales', '*.yml').to_s]
  Compiler.build! current_directory
end
