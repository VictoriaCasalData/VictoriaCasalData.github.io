require 'erb'
require 'i18n'
require_relative 'lib/compiler'

task :default => [:build]

task :build do
  cd = File.dirname(__FILE__)
  I18n.load_path = Dir[File.join(cd, 'locales', '*.yml').to_s]
  Compiler.build! File.dirname(__FILE__)
end
